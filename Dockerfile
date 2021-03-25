FROM ubuntu:xenial

# Set the locale
RUN apt-get clean \
 && apt-get update \
 && apt-get install -y locales \
 && locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

RUN apt-get -y update && apt-get install -y python-pip libcurl4-openssl-dev gcc libssl-dev curl gunicorn

RUN pip install pip --upgrade
RUN pip install git+https://git.openstack.org/openstack/ospurge