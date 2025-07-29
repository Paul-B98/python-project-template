FROM python:3.13-slim-bookworm
COPY --from=ghcr.io/astral-sh/uv:latest /uv /uvx /bin/

# Use Bash
SHELL ["/bin/bash", "-c"]

RUN useradd --user-group --system --create-home --no-log-init app

USER app
WORKDIR /usr/app

COPY . .

RUN uv sync --locked --no-editable

CMD ["/bin/bash", "docker/start.sh"]
