# 🕹️ DevOps Demo Application - Frontend

![React](https://img.shields.io/badge/React-61DAFB?style=for-the-badge&logo=react&logoColor=black) ![TypeScript](https://img.shields.io/badge/TypeScript-3178C6?style=for-the-badge&logo=typescript&logoColor=white) ![Vite](https://img.shields.io/badge/Vite-646CFF?style=for-the-badge&logo=vite&logoColor=white) ![Chakra UI](https://img.shields.io/badge/Chakra_UI-319795?style=for-the-badge&logo=chakra-ui&logoColor=white)

The frontend of our DevOps demo application is a modern, responsive web interface built with cutting-edge technologies.

## 📋 Table of Contents

- [Features](#-features)
- [Requirements](#-requirements)
- [Development Setup](#-development-setup)
  - [Docker-based Development](#docker-based-development)
  - [Local Development](#local-development)
- [Project Structure](#-project-structure)
- [Testing](#-testing)
- [Building for Production](#-building-for-production)
- [Deployment](#-deployment)

## ✨ Features

- **Modern React with Hooks**: Functional components and React hooks
- **Type-safe Development**: Full TypeScript integration
- **Responsive Design**: Mobile-first approach with Chakra UI
- **Efficient Data Fetching**: TanStack Query for API interactions
- **Declarative Routing**: Type-safe routing with TanStack Router
- **Dark/Light Mode**: Built-in theme support
- **Authentication**: JWT-based authentication flow

## 📍 Requirements

- [Node.js](https://nodejs.org/) 18+ (use nvm or fnm for version management)
- [pnpm](https://pnpm.io/) (recommended package manager for faster, more efficient builds)
- [Docker](https://www.docker.com/) (optional, for containerized development)

## 🔧 Development Setup

### Docker-based Development

The easiest way to get started is using Docker Compose from the project root:

```bash
# From the project root directory
docker compose up -d
```

This will start:

- Frontend at http://dashboard.localhost
- Backend API at http://api.localhost
- Database and other services

### Local Development

For a more responsive development experience, you can run the frontend locally.

1. **Node.js Version Management**

Before you begin, ensure that you have either the Node Version Manager (nvm) or Fast Node Manager (fnm) installed:

```bash
# Install fnm (recommended)
# macOS with Homebrew
brew install fnm

# Or install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
```

2. **Install Dependencies**

```bash
# Navigate to frontend directory
cd frontend

# Use the correct Node.js version
fnm use    # or: nvm use

# Install dependencies
pnpm install
```

3. **Start Development Server**

```bash
pnpm dev
```

The development server will start at http://localhost:5173 with hot module replacement enabled.

## 📂 Project Structure

```
frontend/
├── public/              # Static assets
├── src/
│   ├── api/              # API client and hooks
│   ├── components/       # Reusable UI components
│   ├── features/          # Feature-specific components
│   ├── hooks/             # Custom React hooks
│   ├── lib/               # Utilities and helpers
│   ├── providers/         # Context providers
│   ├── routes/            # Application routes
│   ├── theme/             # Chakra UI theme customization
│   ├── types/             # TypeScript type definitions
│   ├── App.tsx            # Main application component
│   └── main.tsx           # Application entry point
├── .eslintrc.js         # ESLint configuration
├── package.json         # Dependencies and scripts
```
