# docker-nvm-base
FROM ubuntu:xenial


RUN rm /bin/sh && ln -s /bin/bash /bin/sh

RUN DEBIAN_FRONTEND=noninteractive apt-get update && \
  apt-get install -y git \
  curl \
  vim &&\
  rm -rf /var/lib/apt/lists/*

ENV NVM_DIR /usr/local/.nvm
ENV NODE_VERSION 10.23.2

# Install nvm
RUN git clone https://github.com/creationix/nvm.git $NVM_DIR && \
  cd $NVM_DIR && \
  git checkout `git describe --abbrev=0 --tags`

# Install default version of Node.js
RUN source $NVM_DIR/nvm.sh && \
  nvm install $NODE_VERSION && \
  nvm alias default $NODE_VERSION && \
  nvm use default && npm i -g  npm@5.10.0


# Add nvm.sh to .bashrc for startup...
RUN echo "source ${NVM_DIR}/nvm.sh" > $HOME/.bashrc && \
  source $HOME/.bashrc

ENV NODE_PATH $NVM_DIR/v$NODE_VERSION/lib/node_modules


# Set the path.
ENV PATH   $NVM_DIR/v$NODE_VERSION/bin:$PATH


RUN mkdir  /prj && mkdir -p /prj/react_app
WORKDIR /prj/react_app


EXPOSE 8001

CMD [ "/bin/bash"]
# https://www.tutorialspoint.com/reactjs/reactjs_forms.htm




