FROM registry.2i2c.mybinder.org/i-serhatcevikel-2dbeyond-5fbounds-cb7907:e3aa869adf1f3de74b111e31e5d427a417c94820

COPY --chown=jovyan:jovyan . ${HOME}

RUN rm -r ${HOME}/binder

WORKDIR ${HOME}
