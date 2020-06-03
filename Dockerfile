FROM httpd:2.4
#RUN export http_proxy=http://192.168.101.101:8080/ \
#&& yum install -y nc \
#                   telnet \
#                   wget \
#                   httpd
COPY httpd2.conf /etc/httpd/conf/httpd.conf
COPY httpd2.conf /usr/local/apache2/conf/httpd.conf
RUN mkdir -p /var/www/html
EXPOSE 8080
#CMD ["/usr/sbin/init","/bin/bash","/usr/sbin/httpd"]
#CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
#CMD ["/usr/sbin/httpd"]
#CMD ["/bin/bash"]
