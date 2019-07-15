FROM openjdk:8-jdk

ARG JAR_FILE
ADD ${JAR_FILE} /bin/app.jar
ENTRYPOINT ["java","-jar", "/bin/app.jar"]

