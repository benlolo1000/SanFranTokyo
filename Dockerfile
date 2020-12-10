#creating our image for backend
FROM node:12

# creating a folder (can be name it as you like, in this case is sanfrantokyo-api)
RUN mkdir -p /usr/src/sanfrantokyo-api/

#  sets this  created folder(sanfrantokyo-api) as the working directory for any COPY, RUN and CMD instructions that follow in the Dockerfile
WORKDIR /usr/src/sanfrantokyo-api/

# Creates ENV Variable for the environment the app is running in
ENV APP_ENV='dev'

# copy our package.json file to our folder to then run "npm install"command to download all the dependencies defined in package.json 
COPY package*.json /usr/src/sanfrantokyo-api/

# 2 commented out code lines removed by shane 
# ARG JS_UTIL_TOKEN
RUN npm install -g npm-cli-adduser
# RUN npm-cli-adduser -u ngalantowicz -r https://npm.pkg.github.com/ -e ngalantowicz@gmail.com -s @t1cg -p ${JS_UTIL_TOKEN}
RUN npm i

# copy our entire local directory into our created folder to bundle our app souce code
COPY ./backend /usr/src/sanfrantokyo-api/backend/

EXPOSE 5000

CMD [ "npm", "run", "server" ]
