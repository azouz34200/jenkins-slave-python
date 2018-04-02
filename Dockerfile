# extend the official jenkins slave base image
FROM openshift/jenkins-slave-base-centos7


# install python
USER root
RUN yum install -y --setopt=tsflags=nodocs install python27-python-pip python27-python-virtualenv
RUN scl enable python27 "pip install pip --upgrade"
# switch to non-root for openshift usage
USER 1001