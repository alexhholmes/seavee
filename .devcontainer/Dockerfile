FROM nvidia/cuda:12.6.0-devel-ubuntu22.04
LABEL dev.containers.features="common"

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && \
    apt-get install -y git wget curl gcc make ninja-build build-essential pipx && \
    pipx ensurepath && \
    pipx install conan
ENV PATH="/root/.local/bin:${PATH}"
RUN conan profile detect

RUN wget --content-disposition $(curl -s https://api.github.com/repos/Kitware/CMake/releases/latest | grep "browser_download_url.*cmake-.*-linux-x86_64.sh" | cut -d '"' -f 4) && \
    chmod +x cmake-3.30.2-linux-x86_64.sh && \
    ./cmake-3.30.2-linux-x86_64.sh --skip-license --prefix=/usr/local
