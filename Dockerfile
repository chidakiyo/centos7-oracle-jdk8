#
# VERSION 0.0.1
#

FROM centos:centos7
MAINTAINER chidakiyo "chidakiyo@gmail.com"

# update
RUN yum -y update

# require packages
RUN yum -y install wget

# download jdk
RUN wget -O "/usr/local/src" --no-check-certificate --no-cookies - --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u40-b26/jdk-8u40-linux-x64.rpm

# install jdk
RUN rpm -ivh /usr/local/src/jdk-8u40-linux-x64.rpm

