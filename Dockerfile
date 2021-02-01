#tutorials point
# https://www.tutorialspoint.com/reactjs/reactjs_environment_setup.htm

FROM ubuntu:latest

RUN apt update

RUN apt install -y sudo

RUN apt install vim

#node.js
RUN sudo apt install -y nodejs
#npm
RUN sudo apt install -y npm

RUN mkdir /react_app
WORKDIR /react_app

EXPOSE 8081

#npm install