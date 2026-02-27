# Build the application jar
export JAVA_HOME="/usr/bin/java"
mvn clean package

# Build the Docker image
docker build -t api_demo .

# Run the container
docker run -p 8080:8080 api_demo
