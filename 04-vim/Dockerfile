FROM base_vim

RUN git clone https://github.com/hspin/env_vim_dev.git  /tmp/myvim \
    && mv /tmp/myvim/bundle /home/uservim/.vim/ \
    && mv /tmp/myvim/vimrc-2 /home/uservim/.vimrc \
    && rm -rf /tmp/myvim

RUN cd $HOME/.vim/bundle/vimproc.vim && make

RUN cd $HOME/.vim/bundle/tern_for_vim && npm install

ADD gitignore /home/uservim/.gitignore

CMD ["vim"]
