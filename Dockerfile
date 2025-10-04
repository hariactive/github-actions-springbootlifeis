# Use Java 21 runtime
FROM eclipse-temurin:21-jre

# Set working directory
WORKDIR /app

# Copy JAR from target folder (built by GitHub Actions)
COPY target/*.jar app.jar

# Expose Spring Boot default port
EXPOSE 8080

# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]
