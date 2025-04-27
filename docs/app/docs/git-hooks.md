# Git Hooks

This project uses Git hooks to enforce code quality and consistency.

## Pre-commit Hooks

The following pre-commit hooks are configured:

- Code formatting (Biome)
- Linting (Ruff for Python, ESLint for JavaScript/TypeScript)
- Type checking (MyPy for Python, TypeScript for JS)
- Unit test execution

## Installation

The hooks are automatically installed when you run:

```bash
make install
```

## Manual Setup

If you need to set up the hooks manually:

```bash
# Install pre-commit
pip install pre-commit

# Install the hooks
pre-commit install
```

## Skipping Hooks

In rare cases, you may need to skip the hooks:

```bash
git commit -m "Your message" --no-verify
```

**Note**: This should be used sparingly and only in exceptional circumstances.
