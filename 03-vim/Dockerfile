FROM dockerfile/nodejs-bower-grunt

RUN apt-get update && apt-get -y upgrade

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get -y install curl git vim-nox wget less locales htop libfontconfig1-dev

RUN apt-get clean && rm -rf /var/lib/apt/lists/* 

RUN npm cache clean

RUN npm install -g npm

RUN npm install -g jshint

# **** add user *****
RUN adduser --disabled-password --gecos "" uservim
RUN echo "uservim ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
# ***********

RUN cp /usr/share/zoneinfo/America/New_York /etc/localtime

RUN dpkg-reconfigure locales

RUN locale-gen en_US.UTF-8

RUN /usr/sbin/update-locale LANG=en_US.UTF-8

WORKDIR /home/uservim/code

ENV HOME /home/uservim/

ENV LC_ALL en_US.UTF-8

ENV LANG en_US.UTF-8

USER uservim

#VOLUME ["/home"]

#ENTRYPOINT ["vim"]
CMD ["vim"]
