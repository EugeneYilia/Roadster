初始启动命令
docker run -d -p 6333:6333 -v "%cd%\qdrant_storage:/qdrant/storage" --name qdrant qdrant/qdrant
