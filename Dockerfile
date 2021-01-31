#tutorials point
# https://www.tutorialspoint.com/reactjs/reactjs_environment_setup.htm

FROM ubuntu:latest

RUN apt update

RUN apt install -y sudo

#node.js
RUN sudo apt install -y nodejs
#npm
RUN sudo apt install -y npm

RUN mkdir /react_app
WORKDIR /react_app

RUN npm init -y
COPY ./package.json /react_app

#react
RUN npm install react --save
#react dom
RUN npm install react-dom --save
#webpack
RUN npm install webpack webpack-dev-server webpack-cli --save
#babel
RUN npm install babel-core babel-loader babel-preset-env  babel-preset-react html-webpack-plugin --save-dev

