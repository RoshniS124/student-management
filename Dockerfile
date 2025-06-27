# Start from an OpenJDK image with Java 17
FROM openjdk:17-jdk-slim

# Create a working directory inside the container
WORKDIR /app

# Copy the JAR file into the container
COPY target/StudentApp-0.0.1-SNAPSHOT.jar app.jar

# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]
