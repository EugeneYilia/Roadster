# Login
docker login

# Build
docker build -t 583076221/ollama-mistral:0.2 .

# Push
docker push 583076221/ollama-mistral:0.2

# Run
docker pull 583076221/ollama-mistral:0.2
docker run -d --name ollama-mistral -p 11434:11434  583076221/ollama-mistral:0.2
