FROM khipu/openjdk17-alpine
CMD ["./mvnw", "clean", "package"]
ARG JAR_FILE_PATH=*.jar
COPY ${JAR_FILE_PATH} sitebackend-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java", "-jar", "sitebackend-0.0.1-SNAPSHOT.jar"]