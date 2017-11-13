# Red Hat Linux v6.6 with Oracle JDK v8u45

FROM centos:6.6
MAINTAINER Justin Grant <jlgrock@gmail.com>

# ########################################################################
# Update distro
# ########################################################################
RUN rpm -ivh http://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm

RUN yum update -y && \
	yum -y install xmlstarlet saxon augeas bsdtar wget tar zip unzip && \
	yum clean all

# ########################################################################
# Install Oracle JDK and remove artifacts after completion
# ########################################################################
RUN wget --no-check-certificate --no-cookies \
	--header "Cookie: oraclelicense=accept-securebackup-cookie" \
	http://download.oracle.com/otn-pub/java/jdk/8u152-b16/aa0333dd3019491ca4f6ddbe78cdb6d0/jdk-8u152-linux-x64.rpm \
	&& rpm -ivh jdk-8u*.rpm && rm jdk-8u*.rpm

# ########################################################################
# Install Java Cryptography extension
# ########################################################################
RUN cd /tmp/ && wget --no-check-certificate --no-cookies \
	--header "Cookie: oraclelicense=accept-securebackup-cookie" \
	http://download.oracle.com/otn-pub/java/jce/8/jce_policy-8.zip \
    && unzip jce_policy-8.zip \
    && rm jce_policy-8.zip \
    && yes | cp -v /tmp/UnlimitedJCEPolicyJDK8/*.jar /usr/java/default/jre/lib/security/

