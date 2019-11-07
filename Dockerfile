FROM jupyter/datascience-notebook:1386e2046833

USER root
RUN apt-get update && apt-get install -y graphviz git

USER jovyan
RUN pip install --no-cache-dir graphviz==0.13.1 && \
    pip install --no-cache-dir vdom==0.5