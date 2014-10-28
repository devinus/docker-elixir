FROM devinus/docker-erlang
MAINTAINER Devin Torres <devin@devintorr.es>

ENV ELIXIR_VERSION 1.0.2
ENV LC_ALL C.UTF-8

RUN \
  apt-get install -y make && \
  curl -L https://github.com/elixir-lang/elixir/archive/v$ELIXIR_VERSION.tar.gz | tar xz && \
  make -C elixir-$ELIXIR_VERSION install && rm -rf elixir-$ELIXIR_VERSION
