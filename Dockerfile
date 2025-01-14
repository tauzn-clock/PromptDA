FROM nvidia/cuda:12.2.0-devel-ubuntu20.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    lsb-release \
    git \
    curl \
    python3 \
    python3-dev \
    python3-pip \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN git clone --recursive https://github.com/tauzn-clock/PromptDA /PromptDA
WORKDIR /PromptDA
RUN pip install -r requirements.txt