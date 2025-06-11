# Python Python Template

This is a template for creating Python projects. It includes a basic project structure, configuration files, and setup scripts to help you get started quickly.

## Features

- 📁 Pre-configured with [uv](https://docs.astral.sh/uv/) for dependency management
- 🪛 Linting with [ruff](https://docs.astral.sh/ruff/)
- 🔧 Type checking with [mypy](https://mypy-lang.org/)
- 🧪 Testing with [pytest](https://docs.pytest.org/en/stable/)
- 📝 [Pre-commit](https://pre-commit.com/) hooks for code quality
- 📦 Uses [dev container](https://containers.dev/) development setup
- 🔎 Easy documentation with [MkDocs](https://containers.dev/)

## Getting Started

> [!NOTE]
> Use the included dev container to automatically install all the necessary dev tools and dependencies.

1. **Clone the repository:**
    ```sh
    git clone https://github.com/Paul-B98/python-project-template.git
    cd python-project-template
    ```

2. **Open the project in Visual Studio Code:**
    ```sh
    code .
    ```

3. **Reopen in container:**
    - Press `F1` to open the command palette.
    - Type `Remote-Containers: Reopen in Container` and select it.
    - VS Code will build the Docker container defined in the `.devcontainer` folder and open the project inside the container.

## Additional features

* [Dev Container Feature](https://containers.dev/features)

## Documentation

Some documentation description

### Requirements and architecture documentation

This project uses [arc42](https://docs.arc42.org/home/) to document the requirements and architecture:
- [Introduction and Goals](docs/arc/introduction.md)
- [Architecture Constraints](docs/arc/constraints.md)
- [Context and Scope](docs/arc/context.md)
- [Solution Strategy](docs/arc/strategy.md)
- [Building Block View](docs/arc/building_block.md)
- [Runtime View](docs/arc/runtime.md)
- [Deployment view](docs/arc/deployment.md)
- [Crosscutting Concepts](docs/arc/concepts.md)
- [Architecture Decisions](docs/arc/decisions.md)
- [Quality Requirements](docs/arc/quality.md)
- [Risks and Technical Debt](docs/arc/risks.md)
- [Glossary](docs/arc/glossary.md)
