# Red Hat Linux v6.6 with Oracle JDK v8u45

FROM centos:latest
MAINTAINER Justin Grant <jlgrock@gmail.com>

# ##################
# Update distro
# ##################
RUN yum update -y \
&& yum install -y wget \
&& yum install -y tar \
&& yum install -y zip unzip

# ##################
# Install Oracle JDK
# ##################
RUN wget --no-check-certificate --no-cookies \
--header "Cookie: oraclelicense=accept-securebackup-cookie" \
http://download.oracle.com/otn-pub/java/jdk/8u45-b14/jdk-8u45-linux-x64.rpm \
&& rpm -ivh jdk-8u45-linux-x64.rpm && rm jdk-8u45-linux-x64.rpm
