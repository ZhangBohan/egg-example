FROM node:8

RUN npm i egg-scripts -g

WORKDIR /home/app
COPY package.json /home/app/
RUN npm install
COPY . /home/app/
EXPOSE 8080
CMD npm start

