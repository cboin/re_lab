# A portable reverse engineering environment using docker

FROM debian:stable-slim
MAINTAINER Clément Boin

ARG username="re"
ARG password="docker"

RUN apt-get update \
    && apt-get -y upgrade \
    && apt-get install -y --no-install-recommends apt-utils \
    && apt-get install -y   \
        build-essential     \
        gdb                 \
        radare2             \
        strace              \
        ltrace              \
        xxd                 \
        bsdiff              \
        libcapstone-dev     \
        libcapstone3        \
        flasm               \
        python-pip          \
        python3             \
        python3-pip         \
        libffi-dev          \
        git                 \
        vim                 \
        wget                \
        llvm                \
        clang               \
        lldb                \
        volatility          \
        binwalk             \
        python3-binwalk     \
        sudo

# Create a standard user
RUN useradd -ms /bin/bash ${username}
RUN echo "${username}:${password}" | chpasswd
RUN adduser ${username} sudo
USER ${username}
WORKDIR /home/${username}

# Install gdb-peda
RUN git clone https://github.com/longld/peda.git ~/peda \
    && echo "source ~/peda/peda.py" >> ~/.gdbinit \
    && echo "DONE! debug your program with gdb and enjoy"

# Install angr
RUN pip install angr
