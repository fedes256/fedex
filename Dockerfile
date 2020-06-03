FROM centos:7.6.1810
RUN export http_proxy=http://192.168.101.101:8080/ \
&& yum install -y nc \
                   telnet \
                   wget \
                   httpd
#&& useradd -ms /bin/bash apache2
#&& chmod -R +755 apache2:apache /var/www
COPY httpd3.conf /etc/httpd/httpd.conf
#COPY httpd3.conf /etc/httpd/conf/httpd.conf
COPY test.pdf /var/www/test.pdf
EXPOSE 8080
#CMD ["/usr/sbin/init","/bin/bash","/usr/sbin/httpd"]
#CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
CMD ["/usr/sbin/httpd"]
#CMD ["/bin/bash"]
