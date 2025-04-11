# Login
docker login

# Build
docker build -t 583076221/qdrant:0.1 .

# Push
docker push 583076221/qdrant:0.1

# Run


初始启动命令
docker run -d -p 6333:6333 -v "%cd%\qdrant_storage:/qdrant/storage" --name qdrant qdrant/qdrant
