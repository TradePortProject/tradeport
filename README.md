# Tradeport Project
<!--START_SECTION:github-actions-badges-->
[![CI](https://github.com/TradePortProject/tradeport-frontend/actions/workflows/ci.yml/badge.svg)](https://github.com/TradePortProject/tradeport-frontend/actions/workflows/ci.yml)<br>
[![CD Pipeline - Deploy to Dockerhub](https://github.com/TradePortProject/tradeport-frontend/actions/workflows/cd.yml/badge.svg?branch=main)](https://github.com/TradePortProject/tradeport-frontend/actions/workflows/cd.yml)<br>
[![CI - Backend Identity - Build, Test & Security Scan](https://github.com/TradePortProject/tradeport-backend-identity/actions/workflows/ci.yml/badge.svg)](https://github.com/TradePortProject/tradeport-backend-identity/actions/workflows/ci.yml)<br>
[![CI - Backend Identity - Deploy Tradeport Identity Service  to Dockerhub](https://github.com/TradePortProject/tradeport-backend-identity/actions/workflows/cd.yml/badge.svg)](https://github.com/TradePortProject/tradeport-backend-identity/actions/workflows/cd.yml)<br>
[![CI - Backend Product - Build, Test & Security Scan](https://github.com/TradePortProject/tradeport-backend-productservice/actions/workflows/ci.yml/badge.svg)](https://github.com/TradePortProject/tradeport-backend-productservice/actions/workflows/ci.yml)<br>
[![CI - Backend Product - Deploy Tradeport Product Service  to Dockerhub](https://github.com/TradePortProject/tradeport-backend-productservice/actions/workflows/cd.yml/badge.svg)](https://github.com/TradePortProject/tradeport-backend-productservice/actions/workflows/cd.yml)<br>

<!--END_SECTION:github-actions-badges-->
This project consists of three main services: `mssql`, `frontend`, and `productservice`. Each service is containerized using Docker and orchestrated using Docker Compose. The services are connected via a Docker network called `my_network`.

## Prerequisites

- Docker: Ensure Docker is installed on your machine. You can download it from [here](https://www.docker.com/products/docker-desktop).
- Docker Compose: Docker Compose is typically included with Docker Desktop.

## Directory Structure

```
tradeport-project/
│
├── docker-compose.yml
├── tradeport-backend-mssql/
│ 	└── Dockerfile
├── tradeport-frontend/
│ 	└── Dockerfile
└── tradeport-backend-productservice/
	└── Dockerfile
```

Build and Start the Services:

```bash
git clone git@github.com:TradePortProject/tradeport.git
git clone git@github.com:TradePortProject/tradeport-frontend.git
git clone git@github.com:TradePortProject/tradeport-backend-productservice.git
git clone git@github.com:TradePortProject/tradeport-backend-orderservice.git
git clone git@github.com:TradePortProject/tradeport-backend-identity.git
git clone git@github.com:TradePortProject/tradeport-backend-mssql.git
```

```bash
cd tradeport
```

```bash
docker-compose up --build
```

Verify the Services:

1. MSSQL: Connect to the database using a SQL client on localhost:1433
2. Frontend: Access the frontend service on http://localhost:3001
3. Product Service: Access the product service API on http://localhost:3016/api/ProductManagement/
4. User Management : Access the User Management service at http://localhost:7237

Stopping the Services:

```bash
docker-compose down
```
