FROM python:3.8

USER root

RUN pip install \
  Sphinx \
  sphinxcontrib-confluencebuilder \
  recommonmark \
  m2r2

COPY entrypoint entrypoint

ENTRYPOINT ["/entrypoint"]
