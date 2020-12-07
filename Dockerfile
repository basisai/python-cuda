FROM nvidia/cuda:10.0-cudnn7-runtime-ubuntu18.04

# Install python3.9 and pip
RUN echo "deb http://ppa.launchpad.net/deadsnakes/ppa/ubuntu bionic main" >> /etc/apt/sources.list \
    && echo "deb-src http://ppa.launchpad.net/deadsnakes/ppa/ubuntu bionic main" >> /etc/apt/sources.list \
    && apt-key adv --keyserver keyserver.ubuntu.com --recv-keys F23C5A6CF475977595C89F51BA6932366A755776 \
    && apt-get update && apt-get install -y \
    libgomp1 \
    python3.9 \
    python3-distutils \
    curl \
    && rm -rf /var/lib/apt/lists/* \
    && ln -s python3.9 /usr/bin/python \
    && (curl https://bootstrap.pypa.io/get-pip.py | python)
