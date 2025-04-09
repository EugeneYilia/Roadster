FROM ollama/ollama:0.1.48

# 安装 curl，用于检测服务是否启动成功
RUN apt-get update && apt-get install -y curl && \
    rm -rf /var/lib/apt/lists/*

EXPOSE 11434

# 创建启动脚本
RUN echo '#!/bin/bash\n\
ollama serve &\n\
until curl -s http://localhost:11434/ > /dev/null; do sleep 1; done\n\
ollama pull mistral:7b-instruct\n\
wait' > /entrypoint.sh && chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
