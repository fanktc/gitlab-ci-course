FROM alpine
RUN apk update
RUN apk add --update nodejs npm
RUN apk add --update npm
RUN npm install --global docusaurus-init


  #docu:
  #  image: alpine
  #  command:
  #    - sudo apt install npm
      #- npm install --global docusaurus-init
