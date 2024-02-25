FROM gesiscss/binder-r2d-g5b5b759-serhatcevikel-2dbeyond-5fbounds-cb7907:c37f59a879df97267dcbc51d395e59e3e4722078

COPY --chown=jovyan:jovyan ./binder ${HOME}/binder

USER root
RUN apt update && \
    apt install -y \
    bc curseofwar dnsutils geoip-bin htop iputils-ping libpoppler-cpp-dev lynx nmap parallel screen sqlite3 tldr traceroute w3m;

RUN pip install bash_kernel && \
	python -m bash_kernel.install && \
	tldr -u && \
	git clone https://github.com/a-nikolaev/curseofwar.git  && \
	cd curseofwar  && \
	make  && \
	make install && \
	cd .. && \
	rm -r curseofwar;

RUN Rscript ${HOME}/binder/install2.R; 

RUN rm -r ${HOME}/binder

WORKDIR ${HOME}
