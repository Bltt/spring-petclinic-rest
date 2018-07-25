FROM java:8
COPY target/spring-petclinic-1.5.2.jar spring-petclinic-1.5.2.jar 
ENTRYPOINT ["java", "-jar", "spring-petclinic-1.5.2.jar"]

