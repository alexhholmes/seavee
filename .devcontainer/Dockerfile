FROM nvidia/cuda:12.6.0-devel-ubuntu22.04
LABEL dev.containers.features="common"

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && \
    apt-get install -y git wget curl gcc make ninja-build build-essential pipx wget && \
    pipx ensurepath && \
    pipx install conan
ENV PATH="/root/.local/bin:${PATH}"
RUN conan profile detect

RUN wget https://github.com/Kitware/CMake/releases/download/v3.30.2/cmake-3.30.2-linux-x86_64.sh && \
    chmod +x cmake-3.30.2-linux-x86_64.sh && \
    ./cmake-3.30.2-linux-x86_64.sh --skip-license --prefix=/usr/local
