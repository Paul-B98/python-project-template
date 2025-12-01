# Build stage
FROM ghcr.io/astral-sh/uv:python3.14-alpine AS builder

WORKDIR /app

# Copy the project into the intermediate image
ADD . /app

# Sync the project
RUN --mount=type=cache,target=/root/.cache/uv \
    uv sync --locked --no-editable --no-default-groups

# Final image stage
FROM python:3.14-alpine

RUN addgroup -S app && adduser -S -G app app
USER app

WORKDIR /app

COPY --from=builder --chown=app:app /app/.venv /app/.venv
COPY src/ /app
COPY docker/ /app

CMD ["/bin/sh", "start.sh"]
