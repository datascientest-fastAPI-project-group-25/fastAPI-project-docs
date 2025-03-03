  # Sock Shop Project Scope Document with C4 Modeling

## Project Objectives
- Deploy a fully functional microservices-based e-commerce application (Sock Shop)
- Implement DevOps best practices for CI/CD
- Demonstrate cloud-native architecture principles
- Ensure security, scalability, and observability
- Showcase containerization and orchestration best practices

## C4 Model for Sock Shop

### Level 1: System Context Diagram

- [ ] Define the Sock Shop system boundary
- [ ] Identify external users (Customers, Administrators)
- [ ] Identify external systems (Payment Processors, Email Services)
- [ ] Document relationships between the system and external entities

![Image](https://github.com/user-attachments/assets/dbae1060-e968-41c9-9fac-e8da80a87c84)

### Level 2: Container Diagram

- [ ] Identify all containers within the Sock Shop system
  - Web Application
  - API Gateway
  - Microservices (User, Catalog, Cart, Order, Payment, Shipping)
  - Databases (User DB, Catalog DB, Cart DB, Order DB)
  - Message Queue
- [ ] Document relationships and communication patterns between containers

![Image](https://github.com/user-attachments/assets/c8a96597-6a55-489e-9b36-4f3f647683b3)

### Level 3: Component Diagram

- [ ] For each microservice, identify internal components
- [ ] Document relationships between components within each microservice

![Image](https://github.com/user-attachments/assets/d9791675-92bf-40d6-bd64-1545bdfb5ea9)

### Level 4: Code Diagram (Optional)

- [ ] For critical components, provide class diagrams or code-level details
- [ ] Focus on security-sensitive or complex components

## Project Boundaries

### In Scope
- Deployment of all Sock Shop microservices in Kubernetes
- Implementation of CI/CD pipelines for all services
- Infrastructure as Code for all environments (dev, staging, production)
- Monitoring and observability solution
- Security implementation (HTTPS, IAM, RBAC, secrets management)
- Data management and backup strategy
- High availability and scalability configuration
- Documentation of architecture and operations

### Out of Scope
- Modifications to the core application code (unless necessary for deployment)
- Integration with real payment providers (will use mock services)
- Custom UI development beyond the existing application
- Mobile application development
- Extended feature development beyond existing functionality

## Technical Constraints
- Must use containerization (Docker)
- Must use Kubernetes for orchestration
- Must implement Infrastructure as Code (Terraform, CloudFormation, or similar)
- Must implement CI/CD pipelines
- Must implement monitoring and observability
- Must implement security best practices
- Must provide documentation and diagrams

## Resource Constraints
- Timeline: 6 weeks to complete the project
- Team: [Number of team members] with [skill sets]
- Budget: Limited cloud resources budget
- Tools: Preference for open-source solutions

## Success Criteria
- All microservices successfully deployed and operational
- CI/CD pipeline successfully deploying to all environments
- Infrastructure provisioned through code with version control
- Monitoring, logging, and alerting in place
- Security controls implemented and verified
- Documentation completed, including C4 model diagrams
- Successful demonstration of the application
- Ability to recover from simulated failures

## Risks and Mitigation Strategies

| Risk | Mitigation Strategy |
|------|---------------------|
| Cloud costs exceeding budget | • Implement cost monitoring<br>• Use spot instances where appropriate<br>• Schedule non-production resources to shut down during off-hours |
| Integration issues between services | • Implement comprehensive testing strategy<br>• Use service contract testing<br>• Set up monitoring for inter-service communication |
| Security vulnerabilities | • Perform regular security scanning<br>• Implement proper secrets management<br>• Configure network policies to restrict traffic |
| Performance issues under load | • Conduct regular load testing<br>• Implement performance monitoring<br>• Configure auto-scaling based on demand |
| Data loss | • Schedule regular backups<br>• Test disaster recovery procedures<br>• Configure proper data persistence for stateful services |

## Deliverables
- Complete source code repository with documentation
- Infrastructure as Code templates
- CI/CD pipeline configuration
- Monitoring and alerting configuration
- Security controls documentation
- C4 model diagrams (Context, Container, Component)
- Operations manual
- Final presentation and demonstration

## Timeline
- Week 1: Requirements, architecture, and project setup
- Week 2: CI/CD pipeline implementation
- Week 3: Infrastructure as Code implementation
- Week 4: Data management implementation
- Week 5: Observability implementation
- Week 6: Final testing, documentation, and presentation preparation

### AWS Infrastructure Overview
![Image](https://github.com/user-attachments/assets/755f44f9-e5f1-436d-bd0b-184bcfaeab11)

### Kubernetes Architecture (EKS)
![Image](https://github.com/user-attachments/assets/eda98089-969a-4c91-b65f-5ee3f1b8da65)

### Sock Shop Microservices on Kubernetes
![Image](https://github.com/user-attachments/assets/5f00c659-5d70-432c-9bd7-c1dfde37c7a7)

### CI/CD Pipeline Architecture
![Image](https://github.com/user-attachments/assets/b084d536-0f51-4a4c-9d7c-6713a34557f6)

### Network Architecture (VPC)
![Image](https://github.com/user-attachments/assets/fa21f0dd-3a5d-423f-8fbb-09ef5ce4fc7a)

###  Observability Architecture
![Image](https://github.com/user-attachments/assets/91d86d6d-9aa9-4f94-be2b-690919c6ac51)