# Use a base image with the JDK and JRE installed
FROM openjdk:17


# Set the working directory
WORKDIR /app

#ARG VERSION


# Copy the JAR file from the previous build step
COPY build/libs/*.jar /app/

# Expose the application port (if needed)
EXPOSE 8080

# Define the command to run your application
#CMD ["java", "-jar", "course-api-${VERSION}.jar"]
CMD ["java", "-jar", "course-api-0.0.7.jar"]

