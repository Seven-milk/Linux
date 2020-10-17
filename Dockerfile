FROM ubuntu:xenial
MAINTAINER XudongZheng Z786909151@163.com
# workdir
# add source
RUN echo "deb http://mirrors.aliyun.com/ubuntu/ xenial main\
deb-src http://mirrors.aliyun.com/ubuntu/ xenial main\
deb http://mirrors.aliyun.com/ubuntu/ xenial-updates main\
deb-src http://mirrors.aliyun.com/ubuntu/ xenial-updates main\
deb http://mirrors.aliyun.com/ubuntu/ xenial universe\
deb-src http://mirrors.aliyun.com/ubuntu/ xenial universe\
deb http://mirrors.aliyun.com/ubuntu/ xenial-updates universe\
deb-src http://mirrors.aliyun.com/ubuntu/ xenial-updates universe\
deb http://mirrors.aliyun.com/ubuntu/ xenial-security main\
deb-src http://mirrors.aliyun.com/ubuntu/ xenial-security main\
deb http://mirrors.aliyun.com/ubuntu/ xenial-security universe\
deb-src http://mirrors.aliyun.com/ubuntu/ xenial-security universe\
">> /etc/apt/sources.list
RUN apt-get update
RUN apt-get upgrade -y
# aptitude
RUN apt-get install aptitude -y
# Install
RUN aptitude install git make curl tmux vim  -y
# && echo 6
RUN aptitude install gcc gfortran g++ m4 csh perl c++ cpp -y
# mkdir
RUN mkdir /home/BUILD_WRF/ /home/BUILD_WRF/{TESTe,TESTLIB,LIB,GEODATA,GRIBDATA,Other}
RUN mkdir /home/BUILD_WRF/LIB /home/BUILD_WRF/LIB/{grib2,NETCDF}
# GIT
RUN mkdir /home/GIT && cd /home/GIT && git init && git clone https://github.com/Seven-milk/Linux
# ENV
RUN cp /home/GIT/Linux/bashrc ~/.bashrc
RUN ["/bin/bash", "-c", "source ~/.bashrc"]
# VIMRC
RUN curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
RUN cp /home/GIT/Linux/vimrc ~/.vimrc
# install LIB
# install WRF/WPS
# bash
CMD /bin/bash
