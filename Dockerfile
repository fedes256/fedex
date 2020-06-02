FROM centos:7.6.1810
RUN export http_proxy=http://192.168.101.101:8080/ \
&& yum install -y nc \
                   telnet \
                   wget \
EXPOSE 8080
CMD ["/usr/sbin/init","/bin/bash"]]
#CMD ["/bin/bash"]
