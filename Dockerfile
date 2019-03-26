FROM elixir:1.8.1-alpine

# Install necessary build tools
RUN apk add bash fdk-aac-dev --repository http://dl-cdn.alpinelinux.org/alpine/edge/testing/

# Install Elixir deps
RUN mix local.hex --force
