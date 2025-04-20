# Login
docker login

# Build
docker build -t 583076221/ollama-mistral:0.2 .

# Push
docker push 583076221/ollama-mistral:0.2

# Run
docker pull 583076221/ollama-mistral:0.2
docker run -d -p 11434:11434 --name yuri_ollama_mistral_0.2 583076221/ollama-mistral:0.2

# Log
docker logs -f containerId