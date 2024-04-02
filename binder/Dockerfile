FROM gesiscss/binder-r2d-g5b5b759-serhatcevikel-2dbeyond-5fbounds-cb7907:2b97cc68e202dc222f04d09fd92f172cabe032be

ENV NB_USER jovyan

COPY --chown=jovyan:jovyan . ${HOME}

RUN apt update && \
    apt install -y openssh-server netcat;

RUN \
    cp ${HOME}/binder/sshd_config /etc/ssh/; \
    rm -r ${HOME}/binder;

RUN \
   \ #chmod 777 -R /etc/ssh;
   chown -R ${NB_USER}:${NB_USER} /etc/ssh; \

WORKDIR ${HOME}
