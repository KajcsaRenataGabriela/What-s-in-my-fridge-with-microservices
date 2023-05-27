# Use the base Flutter image
FROM cirrusci/flutter:stable

# Set the working directory
WORKDIR /app

# Copy the pubspec.yaml and pubspec.lock files to the Docker image
COPY ../pubspec.yaml ./

# Install dependencies using flutter pub
RUN flutter pub get

# Copy the rest of the microservice files to the Docker image
COPY . .

# Expose the necessary ports
EXPOSE 8080


# Specify the entry point command to start the authentication microservice
CMD ["dart", "auth_main.dart"]
