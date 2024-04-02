FROM gesiscss/binder-r2d-g5b5b759-serhatcevikel-2dbeyond-5fbounds-cb7907:2b97cc68e202dc222f04d09fd92f172cabe032be

RUN echo "deb http://old-releases.ubuntu.com/ubuntu yakkety main" > /etc/apt/sources.list.d/yakkety.list && \ 
    apt update && \
    apt install -y ssh=7.4;

WORKDIR ${HOME}
