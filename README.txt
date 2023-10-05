to build the image, use:
  docker build -t docusaurus .


example on how to run the image with custom port:
  docker run -it --rm -p 3001:3000 docusaurus

example on how to run with standard exposed ports from the Dockerfile
  docker run -it --rm -P docusaurus
