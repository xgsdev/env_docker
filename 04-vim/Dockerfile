FROM base_vim

RUN git clone https://github.com/xgsdev/tpl_bundle.git /home/uservim/.vim/bundle

RUN cd $HOME/.vim/bundle/vimproc.vim && make

RUN cd $HOME/.vim/bundle/tern_for_vim && npm install

RUN wget -O /home/uservim/.vimrc https://raw.githubusercontent.com/xgsdev/env_vim/master/vimrc 

CMD ["vim"]
