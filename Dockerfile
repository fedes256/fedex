FROM image-registry.openshift-image-registry.svc:5000/alyctes/irmo
RUN yum install -y nc \
                   wget
                   
EXPOSE 80 443
CMD ["/usr/sbin/init","/bin/bash"]]
#CMD ["/bin/bash"]
