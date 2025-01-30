# Use a base image with JDK 11
FROM openjdk:17

# Set the working directory in the container
WORKDIR /app

# Copy the packaged JAR file into the container
COPY target/product-0.0.1-SNAPSHOT.jar product.jar

# Expose the port your Spring Boot application runs on
EXPOSE 8080

# Run the JAR file
ENTRYPOINT ["java", "-jar", "product.jar"]
