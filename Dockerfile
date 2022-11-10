FROM python:3.8

USER root

RUN pip install \
  Sphinx \
  sphinxcontrib-confluencebuilder \
  recommonmark \
  m2r2
  
RUN apt-get update

RUN apt-get install ffmpeg libsm6 libxext6  -y

COPY entrypoint entrypoint

ENTRYPOINT ["/entrypoint"]
