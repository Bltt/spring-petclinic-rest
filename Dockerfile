FROM centos/nodejs-6-centos7
USER root
RUN yum update -y
RUN yum install -y deltarpm git wget java mvn maven nano epel-release nodejs java-1.8.0-openjdk java-1.8.0-openjdk-devel
RUN yum clean all
RUN mkdir -p /tmp
RUN cd /tmp && git clone https://github.com/Bltt/spring-petclinic-rest.git && cd spring-petclinic-rest && \
  mvn clean package
RUN cd /tmp/spring-petclinic-rest/target
ENTRYPOINT ["java", "-jar", "/tmp/spring-petclinic-rest/target/spring-petclinic-1.5.2.jar"]

