# API Documentation

## Overview

The FastAPI application provides a RESTful API with automatic OpenAPI documentation.

## Accessing the Documentation

When the application is running, you can access the API documentation at:

- Swagger UI: `http://localhost:8000/docs`
- ReDoc: `http://localhost:8000/redoc`

## Authentication

Most API endpoints require authentication. The API uses JWT tokens for authentication.

### Getting a Token

```
POST /api/v1/login/access-token
```

Request body:
```json
{
  "username": "user@example.com",
  "password": "password"
}
```

Response:
```json
{
  "access_token": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9...",
  "token_type": "bearer"
}
```

### Using the Token

Include the token in the Authorization header:

```
Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9...
```

## API Endpoints

The API is organized into the following sections:

- `/api/v1/users` - User management
- `/api/v1/items` - Item management
- `/api/v1/login` - Authentication

For detailed information about each endpoint, refer to the Swagger UI or ReDoc documentation.
