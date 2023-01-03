#FROM registry-scu.cloudtogo.cn/ubuntu:jdk
FROM cherishpf/ubuntu20-gcc-java:v1
ARG app
ADD $app app.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
