# Creating our costume Image (notice the order of each command)
# base image to pull from
FROM node:10 


# creating a folder name sanfrantokyo, and stating where our app is gonna live in order to create containers from this image
RUN mkdir -p /usr/src/sanfrantokyo/
WORKDIR /usr/src/sanfrantokyo/


# moving our package.json to our working directory(sanfrantokyo created above), * means - including package-lock.json
COPY package*.json /usr/src/sanfrantokyo/

# ARG JS_UTIL_TOKEN
RUN npm install -g npm-cli-adduser
# RUN npm-cli-adduser -u ngalantowicz -r https://npm.pkg.github.com/ -e ngalantowicz@gmail.com -s @t1cg -p ${JS_UTIL_TOKEN}
RUN npm i

COPY . .

EXPOSE 3000


# CMD ["npm", "start"] 
