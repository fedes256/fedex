FROM image-registry.openshift-image-registry.svc:5000/alyctes/irmo
RUN yum install -y tar \
&& tar xzf /data/dataok.tar
#                   wget
COPY dataok.tar /data/dataok.tar
RUN tar xzf /data/dataok.tar
EXPOSE 8080 443
CMD ["/usr/sbin/init","/bin/bash"]]
#CMD ["/bin/bash"]
