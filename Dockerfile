#tutorials point
# https://www.tutorialspoint.com/reactjs/reactjs_environment_setup.htm

FROM ubuntu:latest

RUN apt update

RUN apt install -y sudo

RUN apt install vim

#node.js
#バージョンはあげたりしたらテストした上で変更すること
RUN sudo apt install -y nodejs=v10.19.0
#npm
#バージョンはあげたりしたらテストした上で変更すること
RUN sudo apt install -y npm=6.14.4

RUN mkdir /react_app
WORKDIR /react_app

EXPOSE 8081

#npm install