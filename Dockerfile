FROM debian:latest

LABEL maintainer="yaalyy@outlook.com"

# update repo and install some necessary tools
RUN apt update && apt install -y \
    bash \
    vim \
    curl \
    wget \
    net-tools \
    iputils-ping \
    gdb \
    git \
    binutils \
    gcc \
    && apt clean

# set work directory (optional)
# WORKDIR /workspace

# Expose ports (optional)
# EXPOSE 8080

# copy working directory into the image
COPY ./test_dir /test_dir

# use bash
CMD ["/bin/bash"]
