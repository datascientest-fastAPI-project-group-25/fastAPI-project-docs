# Infrastructure Monitoring

## Overview

This directory contains the monitoring configuration for the infrastructure. The monitoring system tracks the health and performance of the infrastructure components, including AWS resources, Kubernetes clusters, and networking.

## Components

- **Prometheus**: Collects and stores metrics
- **Grafana**: Visualizes metrics and provides dashboards
- **Alertmanager**: Manages alerts and notifications
- **CloudWatch Exporter**: Provides AWS-specific metrics
- **Node Exporter**: Provides host-level metrics
- **Blackbox Exporter**: Provides network probing metrics

## Metrics

The following metrics are collected:

- AWS resource usage
- Kubernetes cluster health
- Node resource usage
- Network connectivity
- Service availability
- Cost metrics
- Security metrics

## Dashboards

The following dashboards are available:

- **Infrastructure Overview**: General infrastructure metrics
- **AWS Resources**: Detailed AWS resource metrics
- **Kubernetes**: Kubernetes cluster metrics
- **Network**: Network connectivity metrics
- **Cost**: Cost analysis metrics
- **Security**: Security posture metrics

## Setup

The monitoring system is automatically set up during the infrastructure provisioning. You can also set it up manually:

```bash
terraform apply -target=module.monitoring
```

## Accessing Dashboards

Once the monitoring system is running, you can access the dashboards at:

- Grafana: `https://grafana.<your-domain>`
- Prometheus: `https://prometheus.<your-domain>`

## Configuration

The monitoring configuration can be customized by editing the following files:

- `terraform/modules/monitoring/*.tf`: Terraform configuration
- `terraform/modules/monitoring/templates/*.yaml`: Kubernetes resources
- `terraform/modules/monitoring/dashboards/*.json`: Grafana dashboards

## Integration with Logging

The monitoring system is integrated with the logging system. Metrics about log volume and errors are available in the monitoring dashboards.
