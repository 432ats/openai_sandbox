# Dockerfile
FROM python:3
USER root

RUN apt-get update
RUN apt-get -y install locales && \
    localedef -f UTF-8 -i ja_JP ja_JP.UTF-8

# 言語設定系
ENV LANG ja_JP.UTF-8
ENV LANGUAGE ja_JP:ja
ENV LC_ALL ja_JP.UTF-8
ENV TZ JST-9
ENV TERM xterm

# vim, lessのinstall
RUN apt-get install -y vim less

RUN python -m pip install --upgrade pip
RUN python -m pip install --upgrade setuptools
RUN python -m pip install jupyterlab
RUN jupyter-lab --generate-config
RUN python -m pip install openai==0.27.0