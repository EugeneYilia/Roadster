FROM ollama/ollama:0.1.48

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y --no-install-recommends \
    python3 python3-pip supervisor curl && \
    rm -rf /var/lib/apt/lists/*

RUN ollama serve & \
    curl --retry 10 --retry-connrefused --retry-delay 1 http://localhost:11434/ && \
    curl -X POST -H "Content-Type: application/json" \
         -d '{"model": "mistral:7b-instruct"}' \
         http://localhost:11434/api/pull

# 下载 Qdrant 二进制文件
RUN curl -L https://github.com/qdrant/qdrant/releases/download/v1.7.4/qdrant-x86_64-unknown-linux-gnu.tar.gz \
         -o qdrant.tar.gz && \
    tar -xzf qdrant.tar.gz -C /usr/local/bin qdrant && \
    rm qdrant.tar.gz

# 拷贝向量数据库到镜像中
RUN mkdir -p /qdrant/storage
COPY qdrant_data/storage/ /qdrant/storage/
