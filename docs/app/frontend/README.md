# Frontend Application

## Overview

The frontend application is built with React, TypeScript, and Vite. It provides a user interface for interacting with the FastAPI backend.

## Technologies

- **React**: UI library
- **TypeScript**: Type-safe JavaScript
- **Vite**: Build tool
- **TanStack Query**: Data fetching and caching
- **Chakra UI**: Component library
- **Vitest**: Testing framework

## Development

### Prerequisites

- Node.js 18+
- pnpm

### Setup

```bash
# Install dependencies
pnpm install

# Start development server
pnpm dev
```

The development server will be available at `http://localhost:5173`.

### Testing

```bash
# Run unit tests
pnpm test

# Run tests with coverage
pnpm test:coverage

# Run e2e tests
pnpm test:e2e
```

### Building

```bash
# Build for production
pnpm build

# Preview production build
pnpm preview
```

## Project Structure

```
frontend/
├── public/          # Static assets
├── src/
│   ├── api/         # API client and hooks
│   ├── components/  # Reusable UI components
│   ├── contexts/    # React contexts
│   ├── hooks/       # Custom React hooks
│   ├── pages/       # Page components
│   ├── types/       # TypeScript type definitions
│   ├── utils/       # Utility functions
│   ├── App.tsx      # Main application component
│   └── main.tsx     # Application entry point
├── tests/           # Test files
└── vite.config.ts   # Vite configuration
```
