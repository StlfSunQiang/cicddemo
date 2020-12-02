FROM centos 
MAINTAINER sunqiang sunqiangstlf@163.com

RUN mkdir /usr/local/java
ADD jdk-8u261-linux-x64.tar.gz /usr/local/java/
RUN ln -s /usr/local/java/jdk1.8.0_261 /usr/local/java/jdk

ENV JAVA_HOME /usr/local/java/jdk
ENV JRE_HOME ${JAVA_HOME}/jre
ENV CLASSPATH .:${JAVA_HOME}/lib:${JRE_HOME}/lib
ENV PATH ${JAVA_HOME}/bin:$PATH

ADD /target/cicddemo-0.0.1-SNAPSHOT.jar cicddemo-0.0.1-SNAPSHOT.jar

ENV TZ=Asia/Shanghai

EXPOSE 7788

ENV LC_ALL "zh_CN.UTF-8"

#ENV JAVA_OPTS="-Xmx512m -Xms512m -Xmn192m -Xss256k -XX:SurvivorRatio=6 -XX:MetaspaceSize=300m -XX:ParallelGCThreads=8 -XX:MaxTenuringThreshold=0 -XX:+UseG1GC -XX:ConcGCThreads=8"

ENTRYPOINT ["java","-jar","cicddemo-0.0.1-SNAPSHOT.jar"]









