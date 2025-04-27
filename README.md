# FastAPI Project Documentation

This repository serves as the central documentation hub for the FastAPI Project. It automatically synchronizes README files from all project repositories and presents them in a GitBook-style format.

## Documentation Structure

The documentation is organized by repository:

- **[App Documentation](docs/app/README.md)** - Documentation for the main application (FastAPI backend and React frontend)
- **[Release Documentation](docs/release/README.md)** - Documentation for release management and deployment
- **[Infrastructure Documentation](docs/infra/README.md)** - Documentation for infrastructure as code

## Automatic Synchronization

This repository automatically pulls README files from the following repositories:
- [fastAPI-project-app](https://github.com/datascientest-fastAPI-project-group-25/fastAPI-project-app)
- [fastAPI-project-release](https://github.com/datascientest-fastAPI-project-group-25/fastAPI-project-release)
- [fastAPI-project-infra](https://github.com/datascientest-fastAPI-project-group-25/fastAPI-project-infra)

When a README file is updated in any of these repositories, it is automatically synchronized to this repository and published to the documentation site.

## Project Scope

### In Scope
-  Deployment of FastAPI application on AWS using Kubernetes
-  Infrastructure provisioning using Terraform and Terragrunt
-  Implementation of CI/CD pipelines with GitHub Actions
-  Integration of Helm for Kubernetes resource management
-  Configuration of ingress controllers for traffic management
-  Implementation of security best practices (IAM, RBAC, secrets management)
-  Setup of monitoring and observability tools (Prometheus, Grafana)
-  Documentation of architecture and operational procedures

### Out of Scope
-  Development of new application features
-  Integration with external payment providers or third-party APIs
-  Mobile application development
-  Custom UI development beyond the existing template

## Resource Constraints
-  Timeline: 6 weeks to complete the project
-  Team: 4 members with te following background: 2 software developers, 1 test-engineer & 1 mechatronics engineer
-  Budget: Limited cloud resources budget
-  Tools: Preference for open-source solutions & free

## Success Criteria
-  FastAPI application successfully deployed and operational on AWS
-  CI/CD pipeline successfully deploying to all environments
-  Infrastructure provisioned through code with version control
-  Monitoring, logging, and alerting in place
-  Security controls implemented and verified
-  Documentation completed, including architecture diagrams
-  Successful demonstration of the application

## Risks and Mitigation Strategies

| Risk | Mitigation Strategy |
|------|---------------------|
| Cloud costs exceeding budget | • Implement cost monitoring<br>• Use spot instances where appropriate<br>• Schedule non-production resources to shut down during off-hours |
| Integration issues between services | • Implement comprehensive testing strategy<br>• Use service contract testing<br>• Set up monitoring for inter-service communication |
| Security vulnerabilities | • Perform regular security scanning<br>• Implement proper secrets management<br>• Configure network policies to restrict traffic |
| Performance issues under load | • Conduct regular load testing<br>• Implement performance monitoring<br>• Configure auto-scaling based on demand |
| Data loss | • Schedule regular backups<br>• Test disaster recovery procedures<br>• Configure proper data persistence for stateful services |

## Deliverables
-  Complete source code repository
-  Documentation repository published on GitHub Pages
-  Infrastructure as Code repository with templates using Terraform and Terragrunt
-  CI/CD pipeline configuration
-  Monitoring and alerting configuration
-  Security controls documentation
-  Architecture diagrams
-  Operations manual
-  Final presentation and demonstration

## Timeline
-  Week 1: Requirements gathering
   - project setup
   - repository setup
   - planning of architecture with C4 model
-  Week 2: Infrastructure as Code implementation with Terraform and Terragrunt
   - Kubernetes setup and Helm integration
-  Week 3: Observability setup with Prometheus and Grafana
-  Week 4: CI/CD pipeline enhancement
    - linting
    - dependabot
    - Security implementation and testing
-  Week 7: Final testing and documentation
-  Week 8: Presentation preparation and project closure
