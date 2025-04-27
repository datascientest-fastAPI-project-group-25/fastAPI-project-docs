# Backend Application

## Overview

The backend application is built with FastAPI and provides a RESTful API for the frontend application.

## Technologies

- **FastAPI**: Web framework
- **SQLModel**: ORM
- **Pydantic**: Data validation
- **Alembic**: Database migrations
- **Pytest**: Testing framework

## Development

### Prerequisites

- Python 3.11+
- Docker

### Setup

```bash
# Install dependencies
pip install -e .

# Start development server
uvicorn app.main:app --reload
```

The development server will be available at `http://localhost:8000`.

### Testing

```bash
# Run unit tests
pytest

# Run tests with coverage
pytest --cov=app
```

## Project Structure

```
backend/
├── app/
│   ├── api/         # API endpoints
│   ├── core/        # Core functionality
│   ├── db/          # Database models and utilities
│   ├── schemas/     # Pydantic schemas
│   ├── services/    # Business logic
│   └── main.py      # Application entry point
├── tests/           # Test files
├── alembic/         # Database migrations
└── pyproject.toml   # Project configuration
```
