FROM elixir:1.8.1-alpine

# Install necessary build tools
RUN apk add bash build-base fdk-aac-dev --repository http://dl-cdn.alpinelinux.org/alpine/edge/testing/

# Needed for git based dependencies that may be contained in mix.exs
RUN apk add --no-cache git

# Install Elixir deps
RUN mix local.hex --force
