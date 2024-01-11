FROM centos:7
RUN yum update -y           # make sure to use -y, as Dockerfile in non-interactive
RUN yum install httpd -y

# copy the html page
COPY ./index.html /var/www/html/index.html

# app port (can expose more than 1 port with EXPOSE instruction)
EXPOSE 80       

# CMD should be the last instruction. If > 1 CMD instruction: Docker consider the last one.
CMD ["httpd", "-D", "FOREGROUND"]