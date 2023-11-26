FROM ubuntu:22.04

#install basic utils and python
RUN apt update -y
#RUN apt remove -y java
#RUN yum install -y java-1.8.0-openjdk
#RUN ls /usr/lib/jvm

RUN apt install -y python3 wget openssh-server openssh-client net-tools openjdk-18-jdk vim iputils-ping
# setup hadoop 3.3.4
RUN wget https://dlcdn.apache.org/hadoop/core/stable/hadoop-3.3.6.tar.gz 

# set environment variable & adding path variables and environment variables for HADOOP
ENV JAVA_HOME=/usr/lib/jvm/java-18-openjdk-amd64
ENV HADOOP_HOME=/etc/hadoop
RUN export PATH=$PATH:$HADOOP_HOME/bin:$HADOOP_HOME/sbin:$PATH
RUN export PATH=$PATH:$JAVA_HOME:$JAVA_HOME/bin:$PATH
ENV HADOOP_LOG_DIR=/var/log/hadoop
ENV HADOOP_CONF_DIR=$HADOOP_HOME/etc/hadoop


RUN echo $JAVA_HOME
RUN echo $HADOOP_HOME
RUN java -version

#create hadoop path
RUN mkdir -p $HADOOP_HOME && mkdir -p /var/log/hadoop
RUN mkdir -p /hadoop/hdfs/datanode && mkdir -p /hadoop/hdfs/journalnode
#add hadoop user
RUN addgroup --gid 1000 hadoop
RUN adduser --uid 1000 hadoop --gid 1000 
RUN echo "hadoop ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
RUN chmod 1777 $HADOOP_HOME && chmod 1777 /var/log/hadoop
RUN chown -R hadoop:hadoop $HADOOP_HOME
RUN chown -R hadoop:hadoop /hadoop/hdfs/datanode && chown -R hadoop:hadoop /hadoop/hdfs/journalnode

RUN su hadoop 
#RUN echo $JAVA_HOME
#RUN echo $HADOOP_HOME
#RUN java -version

#TESTIGN
#RUN java --version

RUN tar -xzvf hadoop-3.3.6.tar.gz && \
    mv -v hadoop-3.3.6/* $HADOOP_HOME/. && \
    rm hadoop-3.3.6.tar.gz && rm -rf hadoop-3.3.6

#WORKDIR /opt/hadoop
#ADD log4j.properties /opt/hadoop/etc/hadoop/log4j.properties # buildkit


#after this all binaries are availabes ash shell comand, which means you can directly use 
#$hdfs or $hadoop instad of /opt/hadoop-3.3.4/bin/hdfs or /opt/hadoop-3.3.4/bin/hadoop

#***CONFIGURATION***#

#!!! IMPORTANT
# datanodes connect to namenode and for that they should know namenode's hostname and port. \
# this is specified in core-site.xml
# by default i am using hostname 'namenode-master' and port '8020'. if you change this in core-site.xml then all
# datanodes would be trying to connect to your changed hostname and port. 
# So be sure to change your namenode's to hostname to whatever you specified in core-site.xml
# by default docker assigns random hostnames to containers. hdfs/namenode/scripts/run.sh shows how to run a container with custom hostname.

#TESTING
# RUN $HADOOP_HOME/bin/hadoop

#this image is supposed to work as base for other images. still if you want to move explore around you can start the cntainer in integrated terminal.
#$docker run -it hadoop_base

#RUN ls $HADOOP_HOME/sbin
RUN chmod +x $HADOOP_HOME/sbin/start-all.sh 
RUN chmod +x $HADOOP_HOME/sbin/start-dfs.sh

# format namenode
#RUN su hadoop
#RUN echo $JAVA_HOME
#RUN echo $HADOOP_HOME
#RUN java -version
#RUN $HADOOP_HOME/sbin/start-all.sh
#RUN $HADOOP_HOME/sbin/start-dfs.sh
#RUN $HADOOP_HOME/bin/hdfs namenode -format

RUN su root
EXPOSE 22

RUN sed -ri 's/# export JAVA_HOME=/export JAVA_HOME=\/usr\/lib\/jvm\/java-18-openjdk-amd64/g' /etc/hadoop/etc/hadoop/hadoop-env.sh

RUN service ssh start
#RUN su hadoop
# ssh without key
#RUN ssh-keygen -t rsa -f ~/.ssh/id_rsa -P '' && \
#    cat ~/.ssh/id_rsa.pub >> ~/.ssh/authorized_keys


ENV PATH=$PATH:$HADOOP_HOME/bin:$HADOOP_HOME/sbin
ENV PATH=$PATH:$JAVA_HOME:$JAVA_HOME/bin
CMD /bin/bash

