# Use an official OpenJDK runtime as a parent image
FROM openjdk:11-jdk-slim

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy the local application files to the container's workspace
COPY . /usr/src/app

# Compile the application
RUN javac HelloWorld.java

# Run the application when the container launches
CMD ["java", "HelloWorld"]

