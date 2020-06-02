FROM httpd:2.4
#RUN export http_proxy=http://192.168.101.101:8080/ \
#&& yum install -y nc \
#                   telnet \
#                   wget \
#                   httpd
COPY httpd.conf /etc/httpd/httpd.conf
COPY ./test.pdf /usr/local/apache2/htdocs/
EXPOSE 80
#CMD ["/usr/sbin/init","/bin/bash","/usr/sbin/httpd"]
#CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
CMD ["/usr/sbin/httpd"]
#CMD ["/bin/bash"]
