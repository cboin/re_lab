# A portable reverse engineering environment using docker

FROM debian:stable-slim
MAINTAINER Clément Boin

RUN apt-get update \
    && apt-get -y upgrade \
    && apt-get install -y --no-install-recommends apt-utils \
    && apt-get install -y build-essential \
    && apt-get install -y gdb \
    && apt-get install -y radare2 \
    && apt-get install -y strace \
    && apt-get install -y ltrace \
    && apt-get install -y xxd \
    && apt-get install -y bsdiff \
    && apt-get install -y libcapstone-dev \
    && apt-get install -y libcapstone3 \
    && apt-get install -y flasm \
    && apt-get install -y python-pip \
    && apt-get install -y python3 \
    && apt-get install -y python3-pip \
    && apt-get install -y libffi-dev \
    && apt-get install -y git \
    && apt-get install -y vim \
    && apt-get install -y wget \
    && apt-get install -y llvm \
    && apt-get install -y clang \
    && apt-get install -y lldb \
    && apt-get install -y volatility \
    && apt-get install -y binwalk \
    && apt-get install -y python3-binwalk

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
