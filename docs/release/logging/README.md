# Release Logging

## Overview

This directory contains the logging configuration for the release process. The logging system captures logs from all components involved in the release process, including the CI/CD pipeline, Kubernetes, and the application itself.

## Components

- **Elasticsearch**: Stores and indexes logs
- **Kibana**: Visualizes logs and provides dashboards
- **Fluentd**: Collects and processes logs from Kubernetes
- **Filebeat**: Ships logs from the CI/CD pipeline to Elasticsearch

## Log Sources

The following log sources are captured:

- CI/CD pipeline logs
- Kubernetes cluster logs
- Container logs
- Application logs
- Database logs
- Ingress controller logs

## Log Format

Logs are formatted as JSON with the following fields:

- `@timestamp`: ISO 8601 timestamp
- `log.level`: Log level
- `message`: Log message
- `kubernetes.namespace`: Kubernetes namespace
- `kubernetes.pod.name`: Kubernetes pod name
- `kubernetes.container.name`: Kubernetes container name
- `kubernetes.node.name`: Kubernetes node name
- `labels`: Kubernetes labels
- `annotations`: Kubernetes annotations

## Setup

The logging system is automatically set up during the release process. You can also set it up manually:

```bash
helm install logging ./charts/logging
```

## Accessing Logs

Once the logging system is running, you can access the logs at:

- Kibana: `https://kibana.<your-domain>`

## Configuration

The logging configuration can be customized by editing the following files:

- `charts/logging/values.yaml`: Helm chart values
- `charts/logging/templates/*.yaml`: Kubernetes resources
- `dashboards/*.ndjson`: Kibana dashboards

## Integration with Monitoring

The logging system is integrated with the monitoring system. Metrics about log volume and errors are available in the monitoring dashboards.
