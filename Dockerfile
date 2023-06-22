FROM ubuntu:22.04
RUN apt-get update
RUN apt-get install apache2 systemctl iputils-ping git iproute2 vim -y
RUN useradd -m sysadmin 
WORKDIR /home/dalinchea/car-repair-html-template/file-images
COPY . . /var/www/html/
EXPOSE 80
CMD [“apache2ctl”, “-D”, “FOREGROUND”]

