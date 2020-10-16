FROM ubuntu:latest
MAINTAINER XudongZheng Z786909151@163.com
# workdir
# add source
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
RUN mkdir /home/BUILD_WRF/LIB/{grib2,NETCDF}
# GIT
RUN mkdir /home/GIT && cd /home/GIT && git init && git clone https://github.com/Seven-milk/Linux
# ENV
RUN cp /home/GIT/Linux/.bashrc ~/.bashrc && source ~/.bashrc
# VIMRC
RUN curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
RUN cp /home/GIT/Linux/vimrc ~/.vimrc
# WRF/WPS
RUN cd /home/BUILD/WRF && git clone https://github.com/wrf-model/WRF &&  git clone https://github.com/wrf-model/WPS
# install LIB
# install WRF/WPS
# bash
CMD /bin/bash
