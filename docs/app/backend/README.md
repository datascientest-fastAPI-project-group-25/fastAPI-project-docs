# 🔥 DevOps Demo Application - Backend

![FastAPI](https://img.shields.io/badge/FastAPI-005571?style=for-the-badge&logo=fastapi) ![Python](https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=white) ![Docker](https://img.shields.io/badge/Docker-2496ED?style=for-the-badge&logo=docker&logoColor=white) ![PostgreSQL](https://img.shields.io/badge/PostgreSQL-4169E1?style=for-the-badge&logo=postgresql&logoColor=white)

The backend of our DevOps demo application is built with FastAPI, providing a high-performance, easy-to-use API with automatic interactive documentation.

## 💻 Table of Contents

- [Features](#-features)
- [Requirements](#-requirements)
- [Development Setup](#-development-setup)
  - [Docker-based Development](#docker-based-development)
  - [Local Development](#local-development)
- [Project Structure](#-project-structure)
- [API Documentation](#-api-documentation)
- [Testing](#-testing)
- [Database Migrations](#-database-migrations)
- [Deployment](#-deployment)

## ✨ Features

- **FastAPI Framework**: High-performance, easy to learn, fast to code, ready for production
- **SQLModel ORM**: SQL databases in Python, designed for simplicity, compatibility, and robustness
- **JWT Authentication**: Secure authentication with JWT tokens
- **Automatic API Documentation**: Interactive API documentation with Swagger UI and ReDoc
- **Dependency Injection**: Clean and testable code with FastAPI's dependency injection system
- **Async Support**: Fully asynchronous API endpoints for high performance
- **Comprehensive Testing**: Pytest-based test suite with high coverage

## 📍 Requirements

- [Python](https://www.python.org/) 3.11+
- [Docker](https://www.docker.com/) (recommended for development)
- [PostgreSQL](https://www.postgresql.org/) (or use the Docker setup)
- [UV](https://github.com/astral-sh/uv) (recommended for dependency management)

## 🔧 Development Setup

### Docker-based Development

The easiest way to get started is using Docker Compose from the project root:

```bash
# From the project root directory
docker compose up -d
```

This will start:
- Backend API at http://api.localhost
- PostgreSQL database
- Redis for caching
- Frontend application

### Local Development

For a more responsive development experience, you can run the backend locally.

1. **Environment Setup**

```bash
# Create a virtual environment
python -m venv .venv

# Activate the virtual environment
# On Windows
.venv\Scripts\activate
# On macOS/Linux
source .venv/bin/activate

# Install dependencies with UV
uv pip install -e ".[dev]"
```

2. **Database Setup**

Make sure you have a PostgreSQL instance running, or use the one from Docker Compose:

```bash
# Start just the database
docker compose up -d db
```

3. **Environment Variables**

Create a `.env` file based on `.env.example`:

```bash
cp .env.example .env
# Edit the .env file with your database credentials
```

4. **Run Migrations**

```bash
alembic upgrade head
```

5. **Start Development Server**

```bash
uvicorn app.main:app --reload
```

The API will be available at http://localhost:8000 with automatic reloading on code changes.

## 📂 Project Structure

```
backend/
├── alembic/              # Database migrations
├── app/
│   ├── api/              # API endpoints
│   │   ├── deps.py       # Dependency injection
│   │   ├── errors.py     # Error handlers
│   │   └── routes/       # API route modules
│   ├── core/             # Core functionality
│   │   ├── config.py     # Application configuration
│   │   ├── security.py   # Authentication and security
│   │   └── events.py     # Application events
│   ├── db/               # Database models and utilities
│   │   ├── base.py       # Base model class
│   │   ├── session.py    # Database session
│   │   └── models/       # SQLModel models
│   ├── schemas/          # Pydantic schemas
│   ├── services/         # Business logic
│   ├── utils/            # Utility functions
│   └── main.py           # Application entry point
├── tests/                # Test files
├── pyproject.toml        # Project configuration
└── alembic.ini           # Alembic configuration
```

## 📚 API Documentation

FastAPI automatically generates interactive API documentation:

- **Swagger UI**: http://api.localhost/docs
- **ReDoc**: http://api.localhost/redoc

These provide a complete reference of all API endpoints, request/response schemas, and allow you to test the API directly from the browser.

## 🧪 Testing

The backend includes comprehensive tests:

```bash
# Run all tests
pytest

# Run tests with coverage report
pytest --cov=app

# Run specific test file
pytest tests/api/test_users.py

# Run tests with verbose output
pytest -v
```

## 🔄 Database Migrations

Database migrations are managed with Alembic:

```bash
# Create a new migration
alembic revision --autogenerate -m "description of changes"

# Apply migrations
alembic upgrade head

# Revert to a specific migration
alembic downgrade <revision>
```

## 🚀 Deployment

The application is designed to be deployed in a containerized environment:

1. **Build the Docker image**
   ```bash
   docker build -t fastapi-app:latest .
   ```

2. **Run the container**
   ```bash
   docker run -p 8000:8000 --env-file .env fastapi-app:latest
   ```

For production deployment, see the [Deployment Guide](../deployment/guide.md) in the documentation.
