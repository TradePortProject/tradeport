# Continuous Delivery (CD) Roadmap

This document tracks the evolution of our Continuous Delivery workflows for the Tradeport project. It serves as a single source of truth for planning, implementing, and reviewing CD-related tasks.

## 1. Purpose

- Define and document the end-to-end delivery pipeline for all Tradeport services.
- Track progress, decisions, and status of CD improvements over time.
- Facilitate collaboration and handover among team members.

## 2. Goals

- Automate build, test, and deployment of frontend and backend services.
- Ensure consistent environments (dev, staging, production).
- Integrate infrastructure-as-code (Terraform) into CI/CD.
- Implement secure secret management and approvals for production releases.

## 3. Key Concepts

| Term  | Definition                                                                 |
| ----- | -------------------------------------------------------------------------- |
| CI    | Continuous Integration: automated building and testing of code changes.    |
| CD    | Continuous Delivery/Deployment: automated deployment of builds per commit. |
| Stage | An environment in the delivery pipeline (dev, staging, production).        |

## 4. Roadmap & Task List

The table below outlines actionable CD tasks, their current status, and ownership.

| Date       | Task                                                   | Status | Owner | Notes                               |
| ---------- | ------------------------------------------------------ | ------ | ----- | ----------------------------------- |
| 2025-04-17 | Initialize CD roadmap document                         | Done   | Team  | Created CD.md at monorepo root      |
|            | Add GitHub Actions for lint & test                     | To Do  |       | Separate workflows for each service |
|            | Build & publish Docker images to registry              | To Do  |       | Tag images with SHA/semver          |
|            | Automate Terraform plan & apply for infra provisioning | To Do  |       | Use remote state with locking       |
|            | Implement manual approval gates for production deploy  | To Do  |       | e.g. GitHub Environments            |

 ## 5. Stage 1: Manual Frontend Deployment

 This stage covers a manual end-to-end pipeline for the tradeport-frontend microservice. It includes building the Docker image, pushing it to Docker Hub, and deploying it to an Azure App Service as a custom container.

 ### Steps

1. Prerequisites

   - Docker installed & logged into Docker Hub (`docker login`).
   - Azure CLI installed & logged in (`az login`).
   - Azure subscription with Contributor rights.

2. Build & push the Docker image

   ```bash
   cd tradeport-frontend
   docker build -t <DOCKERHUB_USER>/tradeport-frontend:latest .
   docker push <DOCKERHUB_USER>/tradeport-frontend:latest
   ```

3. Create Azure resource group & App Service plan

   ```bash
   export RG=tradeport-rg
   export LOCATION=<your-location>

   az group create --name $RG --location $LOCATION

   export PLAN=tradeport-frontend-plan

   az appservice plan create --name $PLAN --resource-group $RG --is-linux --sku B1
   ```

4. Create the Web App for Containers

   ```bash
   export APP=tradeport-frontend-app

   az webapp create --resource-group $RG --plan $PLAN --name $APP --deployment-container-image-name <DOCKERHUB_USER>/tradeport-frontend:latest
   ```

   If the Docker Hub repo is private:

   ```bash
   az webapp config container set \
     --resource-group $RG \
     --name $APP \
     --docker-custom-image-name <DOCKERHUB_USER>/tradeport-frontend:latest \
     --docker-registry-server-url https://index.docker.io \
     --docker-registry-server-user <DOCKERHUB_USER> \
     --docker-registry-server-password <DOCKERHUB_PASSWORD>
   ```

5. Configure environment variables (optional)

   ```bash
   az webapp config appsettings set --resource-group $RG --name $APP --settings REACT_APP_API_URL=https://<your-api>.azurewebsites.net
   ```

6. Verify

   Browse to `https://<APP>.azurewebsites.net` to confirm the container is running.

**Next steps**:

- Capture this setup in Terraform (`azurerm_resource_group`, `azurerm_app_service_plan`, `azurerm_app_service`, etc.).
- Automate Docker build & push via GitHub Actions or Ansible playbook.

 ## 6. Change Log

 - **2025-04-17**: Document created with initial task list.
 - **2025-04-17**: Added Stage 1 manual frontend deployment instructions.

_Update this file as CD workflows evolve and new tasks are added or completed._
