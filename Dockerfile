FROM debian:stable-slim

RUN apt-get update && apt-get install -y \
    busybox \
    curl \
    less \
    python3 \
    wget \
    screen \
    zip \
    && rm -rf /var/lib/apt/lists/*

RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" \
    && unzip awscliv2.zip && ./aws/install

CMD tail -f /dev/null