# Use the base Dart image
FROM cirrusci/flutter

# Set the working directory to the root of your project
WORKDIR /app

# Copy the necessary files to the Docker image
COPY pubspec.yaml .
COPY pubspec.lock .
COPY src/ ./src

# Fetch the Dart dependencies
RUN flutter pub get

# Copy the rest of the microservice files to the Docker image
COPY . .

# Expose the port(s) if necessary
EXPOSE 8081

# Specify the entry point command to start the data retrieval microservice
CMD ["dart", "app/src/frigde_main.dart"]