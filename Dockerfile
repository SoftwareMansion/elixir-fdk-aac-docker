FROM elixir:1.8.1-alpine

# Install necessary build tools
RUN apk add autoconf automake libtool build-base

# Install FDK-AAC library
# See: https://github.com/mstorsjo/fdk-aac
WORKDIR /tmp
RUN wget https://github.com/mstorsjo/fdk-aac/archive/v2.0.0.tar.gz
RUN tar xvzf v2.0.0.tar.gz
WORKDIR /tmp/fdk-aac-2.0.0
RUN autoreconf -fvi
RUN ./configure --prefix=/usr
RUN make CFLAGS="-fPIC"
RUN make install
WORKDIR /

# Install Elixir deps
RUN mix local.hex --force
