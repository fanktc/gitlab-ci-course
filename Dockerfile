FROM alpine:latest

#Creating the custom directory to store docusaurus project
RUN mkdir /missaodevops
WORKDIR /missaodevops

#Updating packages and installing docusaurus-init
RUN apk update
RUN apk add --update nodejs npm
RUN apk add --update npm
RUN npm install --global yarn
RUN npm install --global docusaurus-init

#To expose these ports externally to the machine, use -P when starting the container. Or -p to customize the external ports
EXPOSE 35729
EXPOSE 3000

#Start commands
CMD docusaurus-init && cd website && npm run start

#use only the following CMD in case you want to make the container interactive
#CMD /bin/ash
