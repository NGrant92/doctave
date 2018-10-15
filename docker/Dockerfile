# using centos 7.4 as background image
FROM centos:7.4.1708

# adding new user to image
RUN useradd -ms /bin/bash doctave

# creating working directory
WORKDIR /home/doctave/

# installing octave on image
RUN yum -y update && \
  yum -y install epel-release && \
  yum -y install octave
