# A portable reverse engineering environment using docker

FROM debian:stable-slim
MAINTAINER Clément Boin

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
        python3-binwalk

# Create a standard user
RUN useradd -ms /bin/bash re
USER re
WORKDIR /home/re

# Install gdb-peda
RUN git clone https://github.com/longld/peda.git ~/peda \
    && echo "source ~/peda/peda.py" >> ~/.gdbinit \
    && echo "DONE! debug your program with gdb and enjoy"

# Install angr
RUN pip install angr
