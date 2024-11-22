# Use a lightweight base image with JDK
FROM openjdk:17-jdk-alpine

# Create application directory
WORKDIR /app/docker

# Copy application JAR to the container
COPY sidregno.java .

# Expose the port your application runs on
EXPOSE 8080

# Command to run the application
RUN  javac sidregno.java
CMD ["java","sidregno"]
