FROM dockerfile/nodejs-bower-grunt 

RUN apt-get update && apt-get -y upgrade

RUN apt-get -y install curl git vim-nox wget less gzip screen

RUN apt-get -y install ruby ruby-dev

RUN apt-get -y install libfontconfig1-dev

RUN npm install -g npm

# **** add user *****
RUN adduser --disabled-password --gecos "" deployer
RUN echo "deployer ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

RUN gem install sass compass --no-ri --no-rdoc

# ***********

RUN npm install -g yo

RUN npm install -g generator-webapp

RUN npm install -g generator-angular

RUN mkdir -p /home/deployer/.config/configstore

ADD ./insight-bower.yml /home/deployer/.config/configstore/
ADD ./insight-yo.yml /home/deployer/.config/configstore/

RUN chown -R deployer:deployer /home/deployer/.config

WORKDIR /home/deployer/code

ENV HOME /home/deployer/

USER deployer
