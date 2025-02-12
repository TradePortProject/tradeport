# Tradeport Project

This project consists of three main services: `mssql`, `frontend`, and `productservice`. Each service is containerized using Docker and orchestrated using Docker Compose. The services are connected via a Docker network called `my_network`.

## Prerequisites

- Docker: Ensure Docker is installed on your machine. You can download it from [here](https://www.docker.com/products/docker-desktop).
- Docker Compose: Docker Compose is typically included with Docker Desktop.

## Directory Structure

tradeport-project/ 
│ 
├── docker-compose.yml
├── tradeport-backend-mssql/ 
│ 					└── Dockerfile 
├── tradeport-frontend/ 
│ 					└── Dockerfile 
└── tradeport-backend-productservice/ 
					└── Dockerfile
					

Build and Start the Services:

docker-compose up --build


Verify the Services:

MSSQL: Connect to the database using a SQL client on localhost:1433.

Frontend: Access the frontend service on http://localhost:3001.

Product Service: Access the product service API on http://localhost:3016/api/ProductManagement/.

Stopping the Services:

docker-compose down
