# Quick Start Guide

This guide provides a quick start for setting up and running the FastAPI project.

## Prerequisites

- Docker and Docker Compose
- Git
- Python 3.11+
- Node.js 18+
- pnpm

## Clone the Repositories

```bash
# Clone the app repository
git clone https://github.com/datascientest-fastAPI-project-group-25/fastAPI-project-app.git

# Clone the release repository
git clone https://github.com/datascientest-fastAPI-project-group-25/fastAPI-project-release.git

# Clone the infrastructure repository
git clone https://github.com/datascientest-fastAPI-project-group-25/fastAPI-project-infra.git
```

## Start the Application

### Using Docker Compose

```bash
cd fastAPI-project-app

# Start the application
docker-compose up -d
```

The application will be available at:
- Frontend: http://localhost:5173
- Backend API: http://localhost:8000
- API Documentation: http://localhost:8000/docs

### Using Make

```bash
cd fastAPI-project-app

# Install dependencies and start the application
make start
```

## Development Workflow

1. Create a new branch
   ```bash
   make branch
   ```

2. Make your changes

3. Run tests
   ```bash
   make test
   ```

4. Format and lint your code
   ```bash
   make pretty
   ```

5. Commit your changes
   ```bash
   git add .
   git commit -m "feat: your feature description"
   ```

6. Push your changes
   ```bash
   git push origin your-branch-name
   ```

7. Create a pull request

## Deployment

For deployment instructions, see the [Deployment Guide](../deployment/guide.md).
