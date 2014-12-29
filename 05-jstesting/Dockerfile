FROM dockerfile/nodejs-bower-grunt 

RUN apt-get update && apt-get -y upgrade

RUN apt-get -y install curl git vim-nox wget less gzip screen

RUN npm install -g npm

# **** add user *****
RUN adduser --disabled-password --gecos "" uservim
RUN echo "uservim ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

# ***********

RUN npm cache clean

RUN apt-get -y install htop libfontconfig1-dev

exit


RUN npm install -g jshint

RUN npm install -g grunt-contrib-jshint

RUN npm install -g grunt-init

RUN git clone https://github.com/gruntjs/grunt-init-gruntfile.git /home/uservim/.grunt-init/gruntfile

WORKDIR /home/uservim/code

ENV HOME /home/uservim/

USER uservim

VOLUME ["/home"]

EXPOSE 8080
