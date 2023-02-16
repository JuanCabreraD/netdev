FROM ubuntu:20.04
ENV TZ=America/Bogota
#install dependencies
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt-get update -y
RUN apt-get install -y apache2
#RUN apt install -y tzdata
#install apache and write hello world message
RUN echo "HELLO WORLD! FROM DOCKER CISCO DEVASC (DEVNET)" > /var/www/html/index.html
EXPOSE 80
CMD [ "apachectl", "-D", "FOREGROUND" ]