# re_lab
A portable reverse engineering environment using docker.

## Getting Started

These instructions will get you a copy of the project up and running on your local machine.

### Prerequisites

The environment is base on docker, to install it:

* [Install Docker for Windows](https://docs.docker.com/docker-for-windows/install/)
* [Install Docker for macOS](https://docs.docker.com/docker-for-mac/install/)
* [Install Docker for Ubuntu](https://docs.docker.com/install/linux/docker-ce/ubuntu/)

NOTE: You can find a installation guide on the docker web-site for the following distribution: CentOS, Debian, Fedora and Ubuntu. You can also install it from static binaries. But I recommand you to install docker with the package manager of your distribution.

### Packages used

* [build-essential](https://packages.debian.org/search?suite=default&section=all&arch=any&searchon=names&keywords=build-essential) - Informational list of build-essential packages
* [gdb](https://packages.debian.org/search?suite=default&section=all&arch=any&searchon=names&keywords=gdb) - The GNU Debugger
* [radare2](https://packages.debian.org/search?suite=default&section=all&arch=any&searchon=names&keywords=radare2) - Free and advanced command line hexadecimal editor
* [strace](https://packages.debian.org/search?suite=default&section=all&arch=any&searchon=names&keywords=strace) - A system call tracer
* [ltace](https://packages.debian.org/search?suite=default&section=all&arch=any&searchon=names&keywords=ltrace) - Tracks runtime library calls in dynamically linked programs
* [xxd](https://packages.debian.org/search?suite=default&section=all&arch=any&searchon=names&keywords=xxd) - Tool to make (or reverse) a hex dump
* [bsdiff](https://packages.debian.org/search?suite=default&section=all&arch=any&searchon=names&keywords=bsdiff) - Generate/apply a patch between two binary files
* [libcapstone-dev](https://packages.debian.org/search?suite=default&section=all&arch=any&searchon=names&keywords=libcapstone-dev) - Lightweight multi-architecture disassembly framework - devel files
* [libcapstone3](https://packages.debian.org/search?suite=default&section=all&arch=any&searchon=names&keywords=libcapstone3) - Lightweight multi-architecture disassembly framework - library
* [flasm](https://packages.debian.org/search?suite=default&section=all&arch=any&searchon=names&keywords=flasm) - Assembler and disassembler for Flash (SWF) bytecode
* [python-pip](https://packages.debian.org/search?suite=default&section=all&arch=any&searchon=names&keywords=python-pip) - Alternative Python package installer
* [python3](https://packages.debian.org/search?suite=default&section=all&arch=any&searchon=names&keywords=python3) - Interactive high-level object-oriented language (default python3 version)
* [python3-pip](https://packages.debian.org/search?suite=default&section=all&arch=any&searchon=names&keywords=python3-pip) - Alternative Python package installer - Python 3 version of the package
* [libffi-dev](https://packages.debian.org/search?suite=default&section=all&arch=any&searchon=names&keywords=libffi-dev) - Foreign Function Interface library (development files)
* [git](https://packages.debian.org/search?suite=default&section=all&arch=any&searchon=names&keywords=git) - Fast, scalable, distributed revision control system
* [vim](https://packages.debian.org/search?suite=default&section=all&arch=any&searchon=names&keywords=vim) - Vi IMproved - enhanced vi editor
* [wget](https://packages.debian.org/search?suite=default&section=all&arch=any&searchon=names&keywords=wget) - Retrieves files from the web
* [llvm](https://packages.debian.org/search?suite=default&section=all&arch=any&searchon=names&keywords=llvm) - Low-Level Virtual Machine (LLVM)
* [clang](https://packages.debian.org/search?suite=default&section=all&arch=any&searchon=names&keywords=clang) - Low-Level Virtual Machine (LLVM), C language family frontend
* [lldb](https://packages.debian.org/search?suite=default&section=all&arch=any&searchon=names&keywords=lldb) - Next generation, high-performance debugger
* [volatility](https://packages.debian.org/search?suite=default&section=all&arch=any&searchon=names&keywords=volatility) - Advanced memory forensics framework
* [binwalk](https://packages.debian.org/search?suite=default&section=all&arch=any&searchon=names&keywords=binwalk) - Tool for searching binary images for embedded files and executable code
* [python3-binwalk](https://packages.debian.org/search?suite=default&section=all&arch=any&searchon=names&keywords=python3-binwalk) - Python3 library for analyzing binary blobs and executable code
* [gdb-peda](https://github.com/longld/peda) - Python Exploit Development Assistance for GDB
* [angr](http://angr.io/) - A powerful and user-friendly binary analysis platform!
* [sudo](https://packages.debian.org/search?suite=default&section=all&arch=any&searchon=names&keywords=sudo) -	Provide limited super user privileges to specific users 
* [gcc-multilib](https://packages.ubuntu.com/search?keywords=gcc-multilib) - 	GNU C compiler (multilib files) 
* [locales](https://packages.debian.org/search?keywords=locales) - Embedded GNU C Library: National Language (locale) data
* [tmux](https://packages.debian.org/search?suite=default&section=all&arch=any&searchon=names&keywords=tmux) - 	Terminal multiplexer 

### Installing

```bash
$ docker build -t re_lab .
```

```bash
$ docker run -it \
    --privileged \
    -v $(pwd)/share_ro:/share_ro:ro \
    -v $(pwd)/share_rw:/share_rw \
    re_lab
```

### Shared folders

* /share_ro - read only access to access installation of packages
* /share_rw - to be able to write and share the results with host system

## Authors

* **Clément Boin** - *Initial work* - [cboin](https://github.com/cboin)

## License

This project is licensed under the GNU General Public License v3.0 - see the [LICENSE.md](LICENSE.md) file for details

## Acknowledgments

* [PurpleBooth](https://github.com/PurpleBooth) - [README-Template.md](https://gist.github.com/PurpleBooth/109311bb0361f32d87a2)
