<<<<<<< HEAD
#creating our image for backend
FROM node:12 as builder

# creating a folder (can be name it as you like, in this case is sanfrantokyo-api)
RUN mkdir -p /usr/src/sanfrantokyo
#  sets this  created folder(sanfrantokyo-api) as the working directory for any COPY, RUN and CMD instructions that follow in the Dockerfile
WORKDIR /usr/src/sanfrantokyo

# copy our package.json file to our folder to then run "npm install"command to download all the dependencies defined in package.json 
COPY package*.json /usr/src/sanfrantokyo/

RUN npm i

## copy our entire local directory into our created folder to bundle our app souce code
COPY ./ ./

EXPOSE 3000
EXPOSE 5000

CMD [ "npm", "run", "dev" ]

FROM nginx
EXPOSE 80
COPY /frontend/build/ /usr/share/nginx/html/
=======
#creating our image for backend
FROM node:12 as builder

# creating a folder (can be name it as you like, in this case is sanfrantokyo-api)
RUN mkdir -p /usr/src/sanfrantokyo
#  sets this  created folder(sanfrantokyo-api) as the working directory for any COPY, RUN and CMD instructions that follow in the Dockerfile
WORKDIR /usr/src/sanfrantokyo

# copy our package.json file to our folder to then run "npm install"command to download all the dependencies defined in package.json 
COPY package*.json /usr/src/sanfrantokyo/

# 2 commented out code lines removed by shane 
# ARG JS_UTIL_TOKEN

RUN npm i

## copy our entire local directory into our created folder to bundle our app souce code
COPY ./ ./

EXPOSE 3000
EXPOSE 5000

CMD [ "npm", "run", "dev" ]

FROM nginx
EXPOSE 80
COPY ./frontend/build/ /usr/share/nginx/html/
<<<<<<< HEAD
>>>>>>> f073ee32afef443e48fef4e6ac71c2c36867b0ba
=======
>>>>>>> f073ee32afef443e48fef4e6ac71c2c36867b0ba
