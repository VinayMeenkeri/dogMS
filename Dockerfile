# Use the AdoptOpenJDK base image
FROM adoptopenjdk

# Copy the JAR file from the build stage
COPY --from=build /target/DogsManagementSystem-0.0.1-SNAPSHOT.jar DogsManagementSystem.jar

# Set the command to run the application
CMD ["java", "-jar", "DogsManagementSystem.jar"]
