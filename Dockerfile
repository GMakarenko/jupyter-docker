FROM continuumio/anaconda3:latest

RUN apt-get update -y && apt-get upgrade -y
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -
RUN apt-get install nodejs
RUN conda install -y -c plotly -c defaults -c conda-forge "jupyterlab>=1.0" jupyterlab-dash=0.1.0a3
RUN jupyter labextension install jupyterlab-dash@0.1.0-alpha.3

RUN mkdir /opt/notebooks
WORKDIR /opt/notebooks

COPY ./notebooks .
