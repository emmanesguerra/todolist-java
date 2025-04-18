# Use OpenJDK 17 image as base
FROM openjdk:17-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the generated jar file from the target directory
COPY target/demo-0.0.1-SNAPSHOT.jar demo.jar

# Expose port 8080
EXPOSE 8080

# Run the jar file
ENTRYPOINT ["java", "-jar", "demo.jar"]
