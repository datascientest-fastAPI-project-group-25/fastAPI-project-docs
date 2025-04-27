# Release Monitoring

## Overview

This directory contains the monitoring configuration for the release process. The monitoring system tracks the deployment status and performance of the application across different environments.

## Components

- **Prometheus**: Collects and stores metrics
- **Grafana**: Visualizes metrics and provides dashboards
- **Alertmanager**: Manages alerts and notifications
- **Kube State Metrics**: Provides Kubernetes-specific metrics
- **Node Exporter**: Provides host-level metrics

## Metrics

The following metrics are collected:

- Deployment status
- Pod status
- Container resource usage
- Node resource usage
- Service availability
- Ingress traffic
- Database performance
- Application performance

## Dashboards

The following dashboards are available:

- **Release Overview**: General release metrics
- **Deployment Status**: Detailed deployment metrics
- **Kubernetes**: Kubernetes cluster metrics
- **Node Status**: Host-level metrics
- **Application Performance**: Application-specific metrics

## Setup

The monitoring system is automatically set up during the release process. You can also set it up manually:

```bash
helm install monitoring ./charts/monitoring
```

## Accessing Dashboards

Once the monitoring system is running, you can access the dashboards at:

- Grafana: `https://grafana.<your-domain>`
- Prometheus: `https://prometheus.<your-domain>`

## Configuration

The monitoring configuration can be customized by editing the following files:

- `charts/monitoring/values.yaml`: Helm chart values
- `charts/monitoring/templates/*.yaml`: Kubernetes resources
- `dashboards/*.json`: Grafana dashboards

## Integration with CI/CD

The monitoring system is integrated with the CI/CD pipeline. Deployment metrics are automatically collected and visualized in the dashboards.
