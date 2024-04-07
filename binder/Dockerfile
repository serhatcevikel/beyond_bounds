FROM gesiscss/binder-r2d-g5b5b759-serhatcevikel-2dbeyond-5fbounds-cb7907:2b97cc68e202dc222f04d09fd92f172cabe032be

COPY --chown=jovyan:jovyan ./binder ${HOME}/binder

USER root

RUN apt update && \
    apt install -y openssh-server netcat pssh ncdu;

RUN cp ${HOME}/binder/sshd_config /etc/ssh/; \
    rm -r ${HOME}/binder; \
    chmod 666 /etc/ssh/ssh_host_*;    

RUN pip install sos sos-pbs sos-notebook sos-r sos-python sos-bash && \
	python -m sos_notebook.install;

RUN Rscript ${HOME}/binder/install3.R; 

RUN rm -r ${HOME}/binder

WORKDIR ${HOME}
