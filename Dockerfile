# Build stage
FROM python:3.13-slim-bookworm AS builder
COPY --from=ghcr.io/astral-sh/uv:latest /uv /uvx /bin/

WORKDIR /app

# Install dependencies
RUN --mount=type=cache,target=/root/.cache/uv \
    --mount=type=bind,source=uv.lock,target=uv.lock \
    --mount=type=bind,source=pyproject.toml,target=pyproject.toml \
    uv sync --locked --no-install-project --no-editable

# Copy the project into the intermediate image
ADD . /app

# Sync the project
RUN --mount=type=cache,target=/root/.cache/uv \
    uv sync --locked --no-editable

# Final image stage
FROM python:3.13-slim-bookworm

# Use Bash
SHELL ["/bin/bash", "-c"]

RUN useradd --user-group --system --create-home --no-log-init app
USER app

WORKDIR /app

COPY --from=builder --chown=app:app /app/.venv /app/.venv
COPY src/ /app
COPY docker/ /app

CMD ["/bin/bash", "start.sh"]
