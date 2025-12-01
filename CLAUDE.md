# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a Python project template using modern Python tooling and best practices. The project structure follows standard Python conventions with source code in `src/project_name/` and tests in `tests/`.

## Development Commands

### Setup and Dependencies
- **Install dependencies**: `uv sync --all-groups` (installs dev, docs, and main dependencies)
- **Install only main dependencies**: `uv sync`
- **Install with specific groups**: `uv sync --group dev` or `uv sync --group docs`

### Code Quality and Testing
- **Run linter**: `uv run ruff check .` (lint checking)
- **Auto-fix linting issues**: `uv run ruff check --fix .`
- **Format code**: `uv run ruff format .`
- **Type checking**: `uv run mypy .`
- **Run tests**: `uv run pytest .`
- **Run tests with coverage**: `uv run pytest . --cov` (coverage is configured by default)
- **Run single test**: `uv run pytest tests/test_example.py::test_function_name`

### Documentation
- **Build docs**: `uv run mkdocs build`
- **Serve docs locally**: `uv run mkdocs serve`
- **Deploy docs to GitHub Pages**: `uv run mkdocs gh-deploy --force`

### Package Building and Publishing
- **Build package**: `uv build`
- **Publish to PyPI**: `uv publish` (requires UV_PUBLISH_TOKEN)
- **Version bump**: `uv version <version>` (e.g., `uv version 1.0.0`)

### Pre-commit Hooks
- **Install pre-commit hooks**: `pre-commit install`
- **Run pre-commit on all files**: `pre-commit run --all-files`

## Project Structure

```
src/project_name/          # Main package source code
├── __init__.py            # Package initialization
└── main.py               # Main entry point with run() function

tests/                    # Test files
├── __init__.py
└── test_example.py      # Example test file

docs/                    # Documentation using MkDocs
├── arc/                 # Architecture documentation (arc42 format)
├── getting_started/     # Getting started guides
└── scripts/            # Documentation generation scripts

.github/workflows/       # CI/CD pipelines
├── continuous_integration.yml   # CI pipeline (runs on push)
└── continuous_delivery.yaml     # CD pipeline (runs on release)
```

## Configuration Files

- **pyproject.toml**: Main project configuration, dependencies, and tool settings
- **.ruff.toml**: Ruff linter and formatter configuration (line length: 120, target: Python 3.12)
- **mkdocs.yml**: MkDocs documentation configuration with Material theme
- **.pre-commit-config.yaml**: Pre-commit hooks for code quality checks
- **uv.lock**: Dependency lock file managed by uv

## Architecture and Patterns

The project uses **arc42** architecture documentation template located in `docs/arc/`. This provides structured documentation covering:
- Introduction and Goals
- Architecture Constraints
- Context and Scope
- Solution Strategy
- Building Block View
- Runtime View
- Deployment View
- Crosscutting Concepts
- Architecture Decisions
- Quality Requirements
- Risks and Technical Debt
- Glossary

## Development Environment

The project is configured for development using:
- **Dev Containers**: Full development environment in `.devcontainer/` with Docker
- **Python 3.14**: Required Python version
- **uv**: Modern Python package and dependency manager
- **GitHub Actions**: Automated CI/CD with testing, linting, type checking, and deployment

## Key Dependencies

### Development Tools
- **ruff**: Fast Python linter and formatter
- **mypy**: Static type checker
- **pytest**: Testing framework with coverage reporting
- **jupyterlab**: Interactive development environment

### Documentation
- **mkdocs**: Static site generator
- **mkdocs-material**: Material Design theme
- **mkdocstrings**: API documentation generation

## Notes

- The project name is currently set to "project_name" - this is a template that should be customized
- Coverage reports are generated in XML format and uploaded to Coveralls in CI
- Docker images are built and published to GitHub Container Registry on releases
- Documentation is automatically deployed to GitHub Pages on releases
- All Python code should include type hints as mypy strict mode is enabled
