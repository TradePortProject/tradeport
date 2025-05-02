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

Product Owner: TradePort Team Supervisor
Developers: Team 6 Members
End Users: Retailers, Wholesalers, Admin

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

The team followed agile methodology using JIRA and GitHub Projects. Each member took ownership of at least one use case and one design pattern:

### 2.2 Project Status

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

#### 3.1.1 Logical View

> This view models the key abstractions of the system as classes and relationships. It includes:
>
> - Analysis Model class diagrams
> - Use Case sequence diagrams
> - Boundary/Control/Entity classes

#### 3.1.2 Process View

> This view outlines the concurrency and communication aspects of the system. It includes:
>
> - CI pipelines
> - Runtime behavior of microservices
> - Inter-service communication

#### 3.1.3 Development View

> This view describes the software modules and their structure in the development environment. It includes:
>
> - Repository layout
> - Module decomposition
> - Branching strategy and DevSecOps practices

#### 3.1.4 Physical View

> This view captures the deployment architecture. It includes:
>
> - Container orchestration (Docker Compose, Azure App Services)
> - Network topology
> - Environment setup (Dev, Staging, Prod)

#### 3.1.5 Scenarios (Use Cases)

> This view illustrates how the system behaves in real-world usage. It includes:
>
> - Use Case Diagrams
> - Flow of Events
> - Activity + Sequence Diagrams

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

### 4.2 Continuous Integration

> Explain the CI pipeline:
>
> - Triggers
> - Jobs and tests executed
> - Tools used (e.g., GitHub Actions, Jenkins)

### 4.3 Continuous Delivery

> Describe the CD pipeline:
>
> - Number of environments
> - Promotion/approval strategy
> - How deployments are verified

---

## 5. Other Things to Be Highlighted

> Use this space to showcase:
>
> - Innovations
> - Integration with external tools
> - Additional architectural decisions
> - Usability enhancements
> - Team retrospectives
