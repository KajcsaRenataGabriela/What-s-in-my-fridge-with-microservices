# Use the base Flutter image
FROM cirrusci/flutter:stable

# Set the working directory
WORKDIR /data-operations-service

# Copy the rest of the microservice files to the Docker image
COPY . .

# Install dependencies using flutter pub
RUN flutter pub get

# Expose the necessary ports
EXPOSE 8081

# Specify the entry point command to start the authentication microservice
CMD ["dart", "src/fridge_main.dart"]
