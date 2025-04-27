# Application Logging

## Overview

This directory contains the logging configuration for the FastAPI application. The logging system is based on structured JSON logging with ELK stack integration.

## Components

- **Logstash**: Collects and processes logs
- **Elasticsearch**: Stores and indexes logs
- **Kibana**: Visualizes logs and provides dashboards
- **Filebeat**: Ships logs from the application to Logstash

## Log Levels

The following log levels are used:

- **DEBUG**: Detailed information for debugging
- **INFO**: General information about application operation
- **WARNING**: Potential issues that don't prevent the application from working
- **ERROR**: Errors that prevent specific operations from working
- **CRITICAL**: Critical errors that prevent the application from working

## Log Format

Logs are formatted as JSON with the following fields:

- `timestamp`: ISO 8601 timestamp
- `level`: Log level
- `message`: Log message
- `logger`: Logger name
- `request_id`: Unique request identifier
- `user_id`: User identifier (if authenticated)
- `path`: Request path
- `method`: HTTP method
- `status_code`: HTTP status code
- `duration_ms`: Request duration in milliseconds
- `exception`: Exception details (if applicable)

## Setup

The logging system is automatically set up when you run:

```bash
make logging-up
```

## Accessing Logs

Once the logging system is running, you can access the logs at:

- Kibana: `http://localhost:5601`

## Configuration

The logging configuration can be customized by editing the following files:

- `logstash/pipeline/*.conf`: Logstash pipeline configuration
- `elasticsearch/config/*.yml`: Elasticsearch configuration
- `kibana/config/*.yml`: Kibana configuration
- `filebeat/filebeat.yml`: Filebeat configuration

## Integration with Monitoring

The logging system is integrated with the monitoring system. Metrics about log volume and errors are available in the monitoring dashboards.
