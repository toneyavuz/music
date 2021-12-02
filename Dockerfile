
### STAGE 1:BUILD ###
# Defining a node image to be used as giving it an alias of "build"
FROM node:16.13-alpine AS build
# Create a Virtual directory inside the docker image
WORKDIR /usr/src/app
# Copy files from local machine to virtual directory in docker image
COPY . .
RUN yarn
RUN yarn build:prod

# Defining nginx image to be used
FROM nginx:latest AS ngi
# Copying compiled code and nginx config to different folder
# NOTE: This path may change according to your project's output folder
COPY --from=build /usr/src/app/dist/musicx /usr/share/nginx/html
COPY /nginx.conf  /etc/nginx/conf.d/default.conf
# Exposing a port, here it means that inside the container
# the app will be using Port 80 while running
EXPOSE 6874

