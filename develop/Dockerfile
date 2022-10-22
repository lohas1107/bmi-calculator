FROM ubuntu:latest AS base
WORKDIR /
RUN apt update
RUN apt install -y git
RUN apt install -y make
RUN apt install -y curl
RUN apt install -y unzip
RUN git clone https://github.com/flutter/flutter.git -b stable
ENV PATH="${PATH}:/flutter/bin"

FROM base AS app
WORKDIR /bmi-calculator