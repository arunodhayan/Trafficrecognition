FROM nvidia/cuda:9.0-cudnn7-devel
#FROM ubuntu:16.04

ARG DEBIAN_FRONTEND=noninteractive
#FROM tensorflow/tensorflow:devel-gpu 
#RUN echo "nameserver 134.109.133.1" > /etc/resolv.conf && apt-get update && apt-get install -y --no-install-recommends apt-utils
RUN echo "nameserver 134.109.133.1" > /etc/resolv.conf && apt-get update && apt-get install sudo  
# Replace 1000 with your user / group id
# Replace 1000 with your user / group id
RUN echo "nameserver 134.109.133.1" > /etc/resolv.conf && export uid=1002 gid=1002 && \
    mkdir -p /home/developer && \
    echo "developer:x:${uid}:${gid}:Developer,,,:/home/developer:/bin/bash" >> /etc/passwd && \
    echo "developer:x:${uid}:" >> /etc/group && \
    echo "developer ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/developer && \
    chmod 0440 /etc/sudoers.d/developer && \
    chown ${uid}:${gid} -R /home/developer

RUN echo "nameserver 134.109.133.1" > /etc/resolv.conf && apt-get update && apt-get install -y --no-install-recommends python-dev wget feh git unzip python3-pip libblas-dev liblapack-dev cmake python-opencv ffmpeg gf$

RUN echo "nameserver 134.109.133.1" > /etc/resolv.conf && pip3 install setuptools
RUN echo "nameserver 134.109.133.1" > /etc/resolv.conf && apt-get update && apt-get install nano

# Set CUDA_ROOT
#ENV CUDA_ROOT /usr/local/cuda/bin
RUN echo "nameserver 134.109.133.1" > /etc/resolv.conf && pip3 install --upgrade pip
# Install Cython
RUN echo "nameserver 134.109.133.1" > /etc/resolv.conf &&  pip3 install Cython 

# Install Opencv
RUN echo "nameserver 134.109.133.1" > /etc/resolv.conf && pip3 install opencv-python
RUN echo "nameserver 134.109.133.1" > /etc/resolv.conf && pip install notebook
RUN echo "nameserver 134.109.133.1" > /etc/resolv.conf && pip install tensorflow-gpu==1.12.0
#required Other dependencies

RUN echo "nameserver 134.109.133.1" > /etc/resolv.conf &&  pip3 install numpy
RUN echo "nameserver 134.109.133.1" > /etc/resolv.conf && pip3 install scipy
RUN echo "nameserver 134.109.133.1" > /etc/resolv.conf && pip3 install scikit-learn
RUN echo "nameserver 134.109.133.1" > /etc/resolv.conf && pip3 install pydub
RUN echo "nameserver 134.109.133.1" > /etc/resolv.conf && pip3 install matplotlib
RUN echo "nameserver 134.109.133.1" > /etc/resolv.conf && pip3 install ipython jupyter pandas sympy nose
RUN echo "nameserver 134.109.133.1" > /etc/resolv.conf && pip3 install pillow
RUN echo "nameserver 134.109.133.1" > /etc/resolv.conf && pip3 install h5py
RUN echo "nameserver 134.109.133.1" > /etc/resolv.conf && pip3 install keras
RUN echo "nameserver 134.109.133.1" > /etc/resolv.conf && pip3 install imageai
RUN echo "nameserver 134.109.133.1" > /etc/resolv.conf && pip3 install requests

RUN echo "nameserver 134.109.133.1" > /etc/resolv.conf && apt-get update && apt-get install -y protobuf-compiler \
  python-lxml \
  python-pil \
  curl \
  build-essential cmake pkg-config \
  python-dev \
  python-tk 

RUN echo "nameserver 134.109.133.1" > /etc/resolv.conf && git clone https://github.com/OlafenwaMoses/Traffic-Net.git




