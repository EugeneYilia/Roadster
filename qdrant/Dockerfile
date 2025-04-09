# 下载 Qdrant 二进制文件
RUN curl -L https://github.com/qdrant/qdrant/releases/download/v1.7.4/qdrant-x86_64-unknown-linux-gnu.tar.gz \
         -o qdrant.tar.gz && \
    tar -xzf qdrant.tar.gz -C /usr/local/bin qdrant && \
    rm qdrant.tar.gz

# 拷贝向量数据库到镜像中
RUN mkdir -p /qdrant/storage
COPY qdrant_data/storage/ /qdrant/storage/