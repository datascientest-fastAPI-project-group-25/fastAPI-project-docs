# Application Monitoring

## Overview

This directory contains the monitoring configuration for the FastAPI application. The monitoring system is based on Prometheus and Grafana.

## Components

- **Prometheus**: Collects and stores metrics
- **Grafana**: Visualizes metrics and provides dashboards
- **Prometheus FastAPI Instrumentator**: Adds FastAPI-specific metrics

## Metrics

The following metrics are collected:

- HTTP request count
- HTTP request duration
- HTTP request size
- HTTP response size
- HTTP status codes
- Database query count
- Database query duration
- Memory usage
- CPU usage

## Dashboards

The following dashboards are available:

- **Application Overview**: General application metrics
- **HTTP Requests**: Detailed HTTP request metrics
- **Database**: Database performance metrics
- **System Resources**: CPU, memory, and disk usage

## Setup

The monitoring system is automatically set up when you run:

```bash
make monitoring-up
```

## Accessing Dashboards

Once the monitoring system is running, you can access the dashboards at:

- Grafana: `http://localhost:3000`
- Prometheus: `http://localhost:9090`

## Configuration

The monitoring configuration can be customized by editing the following files:

- `prometheus.yml`: Prometheus configuration
- `grafana/dashboards/*.json`: Grafana dashboards
- `grafana/datasources/*.yml`: Grafana data sources

## Integration with Alerts

The monitoring system is integrated with the alerting system. Alerts are configured in:

- `prometheus/alerts.yml`: Alert rules
- `alertmanager/config.yml`: Alert manager configuration
