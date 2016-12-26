FROM centos:latest
MAINTAINER noconnor@redhat.com

RUN yum install -y java wget mvn --setopt=tsflags=nodocs && yum -y clean all

LABEL io.k8s.description="Platform for building and running Java8 applications" \
      io.k8s.display-name="Java8" \
      io.openshift.expose-services="8080:http" \
      io.openshift.tags="builder,java8"

EXPOSE 8080
