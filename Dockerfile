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
RUN wget -O "/var/tmp/jdk-8u40-linux-x64.rpm" --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" --no-verbose http://download.oracle.com/otn-pub/java/jdk/8u40-b26/jdk-8u40-linux-x64.rpm

# install jdk
RUN rpm -ivh /var/tmp/jdk-8u40-linux-x64.rpm

# Timezone
RUN timedatectl set-timezone Asia/Tokyo
