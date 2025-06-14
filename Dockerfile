FROM ubuntu:22.04

RUN apt update && apt install -y \
    python3 python3-pip \
    openssh-client curl git nano \
    iputils-ping net-tools software-properties-common

RUN pip3 install ansible

WORKDIR /ansible
COPY ansible/ /ansible/
ENV ANSIBLE_HOST_KEY_CHECKING=False

CMD ["sleep", "infinity"]
