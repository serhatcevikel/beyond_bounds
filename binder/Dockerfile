FROM gesiscss/binder-r2d-g5b5b759-serhatcevikel-2dbeyond-5fbounds-cb7907:c37f59a879df97267dcbc51d395e59e3e4722078

COPY --chown=jovyan:jovyan ./binder ${HOME}/binder

USER root
RUN apt update && \
    apt install -y \
    dnsutils geoip-bin htop libpoppler-cpp-dev traceroute;

RUN Rscript ${HOME}/binder/install2.R; 

RUN rm -r ${HOME}/binder

WORKDIR ${HOME}
