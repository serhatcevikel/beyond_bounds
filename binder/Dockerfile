FROM registry.2i2c.mybinder.org/i-serhatcevikel-2dbeyond-5fbounds-cb7907:cb2e324b63727b5d246eb0c406d36d9a28a7c87c

COPY --chown=jovyan:jovyan . ${HOME}

RUN rm -r ${HOME}/binder

WORKDIR ${HOME}
