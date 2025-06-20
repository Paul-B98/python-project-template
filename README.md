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

## Contributing

### Conventional Commits

We follow the [Conventional Commits]() specification to maintain a consistent commit history and enable automated tooling for releases and changelogs.

#### Commit message format:
```
Commit Message Format

<type>(optional scope): <short summary>

[optional body]

[optional footer(s)]
```

#### Common Types

- `feat`: A new feature
- `fix`: A bug fix
- `docs`: Documentation only changes
- `style`: Changes that do not affect the meaning of the code (formatting, missing semicolons, etc.)
- `refactor`: A code change that neither fixes a bug nor adds a feature
- `perf`: A code change that improves performance
- `test`: Adding or correcting tests
- `chore`: Changes to the build process or auxiliary tools
- `infra`: infrastructure ch

## Documentation

Some documentation description

### Requirements and architecture documentation

This project uses [arc42](https://docs.arc42.org/home/) to document the requirements and architecture:
1. [Introduction and Goals](docs/arc/introduction.md)
1. [Architecture Constraints](docs/arc/constraints.md)
1. [Context and Scope](docs/arc/context.md)
1. [Solution Strategy](docs/arc/strategy.md)
1. [Building Block View](docs/arc/building_block.md)
1. [Runtime View](docs/arc/runtime.md)
1. [Deployment view](docs/arc/deployment.md)
1. [Crosscutting Concepts](docs/arc/concepts.md)
1. [Architecture Decisions](docs/arc/decisions.md)
1. [Quality Requirements](docs/arc/quality.md)
1. [Risks and Technical Debt](docs/arc/risks.md)
1. [Glossary](docs/arc/glossary.md)

### Additional features

* [Dev Container Feature](https://containers.dev/features)
