# Build stage
FROM python:3.14.6-slim-trixie AS builder
COPY --from=ghcr.io/astral-sh/uv:0.11.21 /uv /uvx /bin/

WORKDIR /app

COPY . /app

RUN --mount=type=cache,target=/root/.cache/uv \
    uv sync --locked --no-editable --no-default-groups


FROM python:3.14.6-slim-trixie AS final

RUN useradd --user-group --system --create-home --no-log-init app \
    && mkdir -p /app \
    && chown -R app:app /app

USER app
WORKDIR /app

COPY --chown=app:app src/ /app
COPY --chown=app:app docker/ /app
COPY --from=builder --chown=app:app /app/.venv /app/.venv

CMD ["/bin/sh", "start.sh"]
