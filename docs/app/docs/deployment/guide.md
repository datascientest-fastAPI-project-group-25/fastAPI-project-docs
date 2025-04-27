# Deployment Guide

This guide provides instructions for deploying the FastAPI application to various environments.

## Prerequisites

- Docker installed
- Access to the container registry
- Kubernetes cluster access (for production deployments)

## Development Deployment

For local development, use the following commands:

```bash
# Start the development environment
docker-compose up -d
```

## Staging Deployment

Staging deployments are handled automatically by the CI/CD pipeline when changes are merged to the staging branch.

## Production Deployment

Production deployments follow a more controlled process:

1. Create a release branch
2. Run the release workflow
3. Verify the deployment in the staging environment
4. Approve the promotion to production

## Troubleshooting

If you encounter issues during deployment, check the following:

- Container logs
- CI/CD pipeline logs
- Kubernetes pod status
