FROM centos:7.6.1810
RUN yum install -y nc \
                   telnet \
                   postgresql \
                   httpd \
                   wget
EXPOSE 22 80
CMD ["/usr/sbin/init","/bin/bash"]]
#CMD ["/bin/bash"]
