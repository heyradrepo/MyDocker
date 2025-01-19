FROM alpine:latest

# Install bash and essential tools
RUN apk add --no-cache bash curl zstd git gcc g++ python3 py3-pip \
    libmagic-dev locales tzdata p7zip zlib-dev \
    openssl-dev libcrypto++-dev libc-dev make cmake gettext \
    autoconf automake libtool swig boost-dev

# Copy the script into the container
COPY Aeon /Aeon

# Make the script executable
RUN chmod +x /Aeon

# Run the script
RUN /Aeon
