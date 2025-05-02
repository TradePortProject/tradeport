# Project Report for <Project Name>

**Practice Module for Certificate in Designing Modern Software Systems**  
**Team <Number>**  
**Members:**

- <Member 1>
- <Member 2>
- <Member 3>
- ...

---

## Table of Contents

1. [Introduction](#1-introduction)
2. [Project Conduct](#2-project-conduct)
3. [System Design](#3-system-design)
4. [DevSecOps and Development Lifecycle](#4-devsecops-and-development-lifecycle)
5. [Other Things to Be Highlighted](#5-other-things-to-be-highlighted)

---

## 1. Introduction

### 1.1 Background

> Provide the background and context of the project and its current status from a project perspective.

TradePort is a B2B e-commerce platform developed as part of the NUS SWE5006 capstone project. It aims to connect wholesalers and retailers through a seamless and secure portal offering authentication, product listings, and order management functionalities. The frontend is built with React + TypeScript and Vite, while the backend follows a microservice architecture using .NET and SQL Server.

### 1.2 Business Needs

> Include a brief summary of the business needs and drivers for the initiative.

Retailers face challenges in discovering wholesale inventory, while wholesalers lack a streamlined platform to onboard retailers and manage orders. TradePort addresses this gap through a scalable digital mar

### 1.3 Stakeholders

> List the key business and IT stakeholders in the initiative.

- **Product Owner**: SWE5006 Project Supervisor
- **Development Team**: Team 6
  - Prabhu
  - Ranjith
  - Sowjanya
  - Sreeraj
  - Su Maw
  - Su Mon
- **End Users**:
  - Retailers
  - Wholesalers
  - Admin (Future Scope)

### 1.4 Project Scope

> Briefly describe the scope of the solution. State what is included in scope and what is out of scope.

#### 1.4.1 Functionality in Scope

> Briefly list the requirements that are in scope.

1. Google-based login and role-based redirection
2. Check registration status
3. Retailer registration
4. Logout for all users
5. Frontend dashboard and landing page

#### 1.4.2 Functionality out of Scope

> Briefly list the requirements that are out of scope.

1. Order and inventory management
2. Admin dashboard features
3. Payment processing

#### 1.4.3 Quality Attributes

> Briefly list the non-functional requirements of the project.

1. Security: JWT with public key validation
2. Availability: Fault-tolerant frontend
3. Performance: Optimized asset delivery
4. Maintainability: Modular frontend components
5. Usability: Mobile responsive layout

---

## 2. Project Conduct

### 2.1 Project Plan

> Describe the rough WBS tasks and the estimated efforts. Clearly list team members responsible for:
>
> - (a) Use case analysis & design
> - (b) Solving design problems using patterns

The team adopted Agile Scrum methodology with a focus on **pair programming** and **collaborative ownership**. For each user story and design task, we identified:

- **Primary team members**: Developers with prior familiarity or domain ownership.
- **Secondary team members**: Paired collaborators assigned to learn and contribute, promoting knowledge transfer.

### 2.2 Project Status

| Sprint   | Status    | Note         |
| -------- | --------- | ------------ |
| Sprint 1 | Completed | Delivered xx |
| Sprint 2 | Completed | Delivered xx |
| Sprint 3 | Completed | Delivered xx |
| Sprint 4 | Completed | Delivered xx |
| Sprint 5 | Completed | Delivered xx |
| Sprint 6 | Completed | Delivered xx |
| Sprint 7 | Completed | Delivered xx |

Describe the current project status. Highlight any outstanding issues.

### 2.3 Project Metrics

Provide project milestones and the effort expended by each team member.

| Team Member | Effort |
| ----------- | ------ |
| Ranjith     | xx Hrs |
| Prabhu      | xx Hrs |
| Sowjanya    | xx Hrs |
| Su Mon      | xx Hrs |
| Su Maw      | xx Hrs |
| Sreeraj     | xx Hrs |

---

## 3. System Design

### 3.1 Software Architecture

> Use UML to describe the overall architecture (e.g., components, layers, packages).  
> Mention tech stacks, frameworks, databases, etc.

This section adopts the 4+1 View Model to describe the TradePort system architecture from multiple perspectives. Each view supports different stakeholder concerns while together they provide a comprehensive understanding of the system's design.

#### 3.1.1 Logical View

> This view models the key abstractions of the system as classes and relationships. It includes:
>
> - Analysis Model class diagrams
> - Use Case sequence diagrams
> - Boundary/Control/Entity classes

**Included Artifacts** :

1. Analysis Model Class Diagrams with Entity, Boundary, and Control classes
2. Use Case Sequence Diagrams capturing runtime collaborations
3. Package diagrams to illustrate modular decomposition

**Key Highlights**:

4. Entity classes represent core business objects (e.g., User, Product, AuthToken)
5. Boundary classes handle user inputs and outputs (e.g., LoginController)
6. Control classes coordinate business logic (e.g., AuthService, UserService)

#### 3.1.2 Process View

> This view outlines the concurrency and communication aspects of the system. It includes:
>
> - CI pipelines
> - Runtime behavior of microservices
> - Inter-service communication

**CI/CD Pipelines**:

1. GitHub Actions is used for CI across frontend and backend.
2. CI steps include:
   <br>2.1. Lint
   <br>2.2. Unit Test
   <br>2.3. Static Code Analysis (SonarQube)
   <br>2.4. Snyk Security Scan
   <br>2.5. Dependency Checks (GitHub Dependabot)
   <br>2.6. Container Scan (Docker Scout)
   <br>2.7. Build
   <br>2.8. Push.
3. Artifacts are tagged per sprint using semantic versioning.

**Microservices**:

1. Services run independently in Docker containers.
2. Current services:
   <br>2.1. identity-service (authentication)
   <br>2.2. user-service (registration and user data)
   <br>2.3. product-service (product listing and exploration)

**Inter-service Communication**:

1. REST APIs secured with JWTs.
2. Authentication is handled using Google OAuth via Auth0, which returns a signed JWT.
3. Authorization is enforced using a custom role-based token validation mechanism.
4. Token validation is decentralized using cached public keys.

#### 3.1.3 Development View

> This view describes the software modules and their structure in the development environment. It includes:
>
> - Repository layout
> - Module decomposition
> - Branching strategy and DevSecOps practices

The development view describes the organization of the software artifacts and source code. It includes:

**Modular repository layout**:

1. /frontend
2. /identity-service
3. /user-service
4. /product-service
5. /tradeport

**Technologies used**:
|Segment|Stack|
|---|---|
|Frontend|React (Vite + TypeScript + TailwindCSS)|
|Backend|.NET Core (C#), REST APIs|
|Databse|SQL Server|

DevSecOps practices including SonarQube for code quality, Snyk and GitHub Dependabot for dependency vulnerability scanning, OWASP scanning for vulnerability detection, and Docker Scout for container image security

Trunk-based development strategy: the main branch is always in a deployable state, with short-lived feature branches merged via pull requests after successful CI checks

**CI Workflow**:

1. Triggered on push/PR to main or feature/\*
2. Test, scan, build, and publish pipelines are enforced for each commit
3. make dev script helps new developers bootstrap the local environment quickly

This view is targeted at developers and maintainers for understanding codebase structure and collaborative workflows.

#### 3.1.4 Physical View

> This view captures the deployment architecture. It includes:
>
> - Container orchestration (Docker Compose, Digital Ocean Droplets)
> - Network topology
> - Environment setup (Dev, Staging, Prod)

The physical view models the system's infrastructure and deployment topology. It includes:

1. Docker Compose setup for local development with volume and network isolation
2. Digital Ocean Droplets hosting containerized microservices for staging and production
3. Network boundaries between public-facing frontend, internal backend services, and database with firewall and environment variables management

This view serves infrastructure and DevOps teams concerned with scalability, reliability, and environment separation.

### Deployment Setup

#### Local Development

- Docker Compose is used to orchestrate frontend and backend microservices locally
- Environment variables are managed using `.env` files

#### Staging/Production

- Hosted on **DigitalOcean Droplets**
- Infrastructure provisioned using **Terraform**
- Configuration and service provisioning automated using **Ansible**
- Environment variables are securely managed via **GitHub Actions Secrets**
- Database containers run with mounted volumes for secure data persistence

#### Network Topology

- Public-facing frontend routes traffic through an **NGINX reverse proxy**
- **Google OAuth** (via Auth0) handles user authentication
- Backend services perform custom **JWT-based authorization**, validating roles from token claims
- JWTs are validated using a **cached public key** in each microservice
- Internal microservices communicate over a **private Docker bridge network**

#### 3.1.5 Scenarios (Use Cases)

> This view illustrates how the system behaves in real-world usage. It includes:
>
> - Use Case Diagrams
> - Flow of Events
> - Activity + Sequence Diagrams

This view illustrates how the system behaves in various real-world scenarios and is supported by the following artifacts:

### Supporting Artifacts

- **Use Case Diagram**: Includes primary actors such as Retailer, Wholesaler, and Admin
- **Use Case Specifications**: Contain detailed Basic and Alternative Flows, Preconditions, and Postconditions
- **Activity Diagrams**: Represent the control flow across frontend components and backend services
- **Sequence Diagrams**: Illustrate runtime message exchanges between system components (e.g., controllers, services, databases)

These scenarios support requirements validation, functional testing, and training new team members by offering usage-centric insight into the system.

### 3.2 Transition from Analysis to Design

> List transition strategies that guide use case design.

#### 3.2.1 Transition Strategy N

> Explain the changes from analysis model to design model:
>
> - Types of impacted objects
> - Use cases affected
> - Structural changes in class diagrams
> - Dynamic behavior changes in sequence diagrams
> - Rationale for each change

### 3.3 Use Case Model

#### 3.3.1 Use Case Diagram

> Include the overall UML use case diagram for the system.

#### 3.3.2 Use Case Description N

> For each use case:
>
> - Flow of events (basic and alternative flows)
> - Preconditions and postconditions
> - Actors involved

### 3.4 Analysis & Design Models

#### 3.4.1 Use Case N by Name of Member M

> For each use case, include:
>
> - Analysis Class Diagram
> - Analysis Sequence Diagram(s)
> - Design Class Diagram
> - Design Sequence Diagram(s)
>   Ensure transitions follow the defined strategy.

### 3.5 Design Problems and Patterns

#### 3.5.1 Design Problem N by <Name of Member M>

> Each problem should include:
>
> - Description of the design problem
> - Brute-force solution (optional)
> - Candidate design patterns
> - Justification for chosen pattern
> - Class diagram (before & after)
> - Sequence diagram (before & after)
> - Key implementation decisions

### 3.6 Database Schemas

> Provide the database schema using ER diagrams or SQL DDL where relevant.

---

## 4. DevSecOps and Development Lifecycle

### 4.1 Source Control Strategy

> Describe the source code and config management strategy:
>
> - Repository structure
> - Branching strategy
> - Developer authentication

The project uses a **monorepo architecture** hosted on GitHub. Key practices include:

- **Repository Layout**:

  - `/frontend` – Vite + React + Tailwind
  - `/identity-service`, `/user-service`, `/product-service` – .NET microservices
  - `/tradeport` – Terraform scripts and Docker Compose setup

- **Branching Strategy**:

  - Trunk-based development
  - `main` is always deployable
  - Feature branches follow the pattern `feature/*`
  - Pull requests require passing CI checks and peer review

- **Access Control**:
  - Developer permissions managed via GitHub Teams
  - Sensitive values (e.g., API keys, secrets) injected via GitHub Actions Secrets

### 4.2 Continuous Integration

> Explain the CI pipeline:
>
> - Triggers
> - Jobs and tests executed
> - Tools used (e.g., GitHub Actions, Jenkins)

**CI Pipelines** are implemented using **GitHub Actions**, triggered on every push or pull request. Steps include:

1. Linting (ESLint, .NET Format)
2. Unit Testing (Vitest for frontend, XUnit for backend)
3. Code Coverage Reporting
4. Static Code Analysis (SonarQube)
5. Vulnerability Scanning:
   - Dependency: Snyk, GitHub Dependabot
   - OWASP Dependency-Check
   - Container: Docker Scout
6. Docker Build and Push to Container Registry (tagged by sprint)

CI feedback is shown inline in GitHub pull requests.

### 4.3 Continuous Delivery

> Describe the CD pipeline:
>
> - Number of environments
> - Promotion/approval strategy
> - How deployments are verified

CD is implemented as a **multi-environment deployment pipeline** using GitHub Actions.

All CD-related infrastructure and automation scripts are version-controlled in the `/tradeport` directory, including:

- `terraform/` – Infrastructure provisioning for DigitalOcean
- `ansible/` – Configuration management and service provisioning
- `deploy/` – GitHub Actions workflows and CD orchestration

#### Environments

- **`dev`** – Auto-deployed on push to `main`
- **`staging`** – Promoted manually from `main` after successful test review
- **`prod`** – Deployed on version tag (e.g., `v1.0.0`) with manual approval and checks

#### Automation & Tooling

- **Terraform** provisions DigitalOcean droplets and networking components
- **GitHub Actions** drives all deployment workflows across environments
- **GitHub Secrets** securely inject API keys, DB credentials, and tokens
- **Docker images** are built and pushed to container registry with semantic version tags
- **Health checks** and webhook integrations validate deployments

## This approach ensures **repeatable, auditable, and secure deployments** across environments.

## 5. Other Things to Be Highlighted

> Use this space to showcase:
>
> - Innovations
> - Integration with external tools
> - Additional architectural decisions
> - Usability enhancements
> - Team retrospectives
