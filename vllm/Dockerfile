FROM vllm/vllm-openai:latest

RUN mkdir -p /app/models

COPY Qwen1.5-1.8B-Chat-AWQ /app/models/Qwen1.5-1.8B-Chat-AWQ

CMD ["--model", "/app/models/Qwen1.5-1.8B-Chat-AWQ", "--dtype", "auto", "--quantization", "awq", "--gpu-memory-utilization", "0.5", "--max-model-len", "2048", "--disable-log-stats"]