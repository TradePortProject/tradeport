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
 | Term   | Definition                                                                 |
 | ------ | -------------------------------------------------------------------------- |
 | CI     | Continuous Integration: automated building and testing of code changes.    |
 | CD     | Continuous Delivery/Deployment: automated deployment of builds per commit. |
 | Stage  | An environment in the delivery pipeline (dev, staging, production).        |

 ## 4. Roadmap & Task List
 The table below outlines actionable CD tasks, their current status, and ownership.

 | Date       | Task                                                    | Status    | Owner  | Notes                                |
 | ---------- | ------------------------------------------------------- | --------- | ------ | ------------------------------------ |
 | 2025-04-17 | Initialize CD roadmap document                          | Done      | Team   | Created CD.md at monorepo root       |
 |            | Add GitHub Actions for lint & test                      | To Do     |        | Separate workflows for each service  |
 |            | Build & publish Docker images to registry               | To Do     |        | Tag images with SHA/semver           |
 |            | Automate Terraform plan & apply for infra provisioning | To Do     |        | Use remote state with locking        |
 |            | Implement manual approval gates for production deploy  | To Do     |        | e.g. GitHub Environments             |

 ## 5. Change Log
 - **2025-04-17**: Document created with initial task list.

 _Update this file as CD workflows evolve and new tasks are added or completed._