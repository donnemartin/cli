FROM ubuntu:latest

RUN set -xe \
  && apt-get update -y \
  && apt-get install -y python3-pip \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

RUN pip3 install --upgrade pip
RUN pip3 install saws

ENTRYPOINT ["saws"]
