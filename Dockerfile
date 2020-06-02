FROM centos:7.6.1810
RUN yum install -y nc \
                   telnet \
                   wget
EXPOSE 8080
CMD ["/usr/sbin/init","/bin/bash"]]
#CMD ["/bin/bash"]
