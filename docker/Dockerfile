FROM centos:7.4.1708

RUN useradd -ms /bin/bash doctave

WORKDIR /home/doctave/

RUN yum -y update && \
yum -y install epel-release && \
yum -y install octave

# CMD ["octave --no-gui"]
