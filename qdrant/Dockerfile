FROM qdrant/qdrant:latest

# 创建 Qdrant 数据目录（确保权限正确）
RUN mkdir -p /qdrant/storage

# 拷贝本地数据到镜像中
COPY ./qdrant_storage /qdrant/storage

# 确保数据权限正确
RUN chown -R qdrant:qdrant /qdrant/storage

# 暴露Qdrant服务端口
EXPOSE 6333

# 启动 Qdrant 服务（默认镜像CMD无需重写，除非特殊需求）
CMD ["./qdrant"]
