# 🚀 FastAPI Project App

![FastAPI](https://img.shields.io/badge/FastAPI-005571?style=for-the-badge&logo=fastapi) ![React](https://img.shields.io/badge/React-61DAFB?style=for-the-badge&logo=react&logoColor=black) ![Docker](https://img.shields.io/badge/Docker-2496ED?style=for-the-badge&logo=docker&logoColor=white)

A modern full-stack application with FastAPI backend and React frontend.

![Dashboard](img/dashboard.png)

## 📚 Documentation

**[View Complete Documentation](https://github.com/datascientest-fastAPI-project-group-25/fastAPI-project-docs)**

## 📋 Quick Links

- [Setup Guide](#-quick-setup)
- [Architecture](#-architecture)
- [Development](#-development)
- [Screenshots](#-screenshots)
- [Testing](#-testing)
- [Troubleshooting](#-troubleshooting)

## 🏗️ Architecture

- **Frontend**: React, TypeScript, TanStack Query, Chakra UI
- **Backend**: FastAPI, SQLModel, Pydantic
- **Database**: PostgreSQL
- **Infrastructure**: Docker, Traefik
- **Build Tools**: pnpm, Biome, UV

## 🚀 Quick Setup

### Prerequisites

- Docker and Docker Compose
- Python 3.11+
- Git

### Setup in 3 Steps

1. **Clone and setup**
   ```bash
   git clone https://github.com/yourusername/fastAPI-project-app.git
   cd fastAPI-project-app
   make setup
   ```

2. **Start the application**
   ```bash
   make up
   ```

3. **Initialize the database**
   ```bash
   make init-db
   ```

## 💻 Development

### Access Points

- **Frontend**: http://dashboard.localhost
- **Backend API**: http://api.localhost
- **API Docs**: http://api.localhost/docs

### Default Login

- **Email**: admin@example.com
- **Password**: See `FIRST_SUPERUSER_PASSWORD` in your `.env` file

### Common Commands

```bash
make help      # Show all available commands
make up        # Start all services
make down      # Stop all services
make restart   # Restart all services
make test      # Run all tests
```

## 📸 Screenshots

| Feature | Screenshot |
|---------|------------|
| **Dashboard** | ![Dashboard](img/dashboard.png) |
| **API Documentation** | ![API Documentation](img/docs.png) |
| **Login Screen** | ![Login Screen](img/login.png) |
| **Item Management** | ![Dashboard with Items](img/dashboard-items.png) |
| **Create New Item** | ![Create New Item](img/dashboard-create.png) |
| **User Settings** | ![User Settings](img/dashboard-user-settings.png) |
| **Dark Mode** | ![Dark Mode](img/dashboard-dark.png) |

## 🔄 Workflow

### Branching Strategy

1. **Main Branch (`main`)**: Production-ready code
2. **Development Branch (`dev`)**: Integration branch
3. **Feature Branches (`feat/*`)**: For new features
4. **Fix Branches (`fix/*`)**: For bug fixes

## 🧪 Testing

```bash
# Run all tests
make test

# Run specific tests
make test-backend
make test-frontend
make test-e2e
```

## 🔍 Troubleshooting

### Common Issues

1. **Docker Issues**
   - Restart: `docker compose down && docker compose up -d`

2. **Database Issues**
   - Check credentials in `.env`
   - Reset database: `make init-db`

3. **Login Issues**
   - Default login: admin@example.com
   - Password: See `FIRST_SUPERUSER_PASSWORD` in `.env`
   - Reset database: `docker compose down -v && make up && make init-db`

## Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feat/amazing-feature`)
3. Commit your changes (`git commit -m 'feat: add amazing feature'`)
4. Push to the branch (`git push origin feat/amazing-feature`)
5. Open a Pull Request to the `dev` branch
