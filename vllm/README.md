# Login
docker login

# Build
docker build -t 583076221/vllm-qwen1.5-1.8b-chat-awq:0.3 .

# Push
docker push 583076221/vllm-qwen1.5-1.8b-chat-awq:0.3

# Run
docker pull  583076221/vllm-qwen1.5-1.8b-chat-awq:0.3
docker run --gpus all -d -p 8000:8000 --name yuri_vllm_qwen1.5_1.8b_awq_0.3 583076221/vllm-qwen1.5-1.8b-chat-awq:0.3

# Log
docker logs -f containerId

# 用Docker前初始启动命令
docker run --gpus all -d -p 8000:8000 -v "E:\your\path\to\Qwen1.5-1.8B-Chat-AWQ:/models" vllm/vllm-openai:latest --model /models --dtype auto --quantization awq --gpu-memory-utilization 0.9 --max-model-len 32768















参数说明：

/path/to/deepseek-llm-7B-instruct-AWQ：替换为你本地模型的实际路径。

--dtype float16：使用半精度浮点数，减少显存占用。

--gpu-memory-utilization 0.9：设置 GPU 显存利用率为 90%





最终版本

docker run --gpus all -d -p 8000:8000 \
-v /your/path/to/Qwen1.5-1.8B-Chat-AWQ:/models \
vllm/vllm-openai:latest \
--model /models --dtype auto --quantization awq \
--gpu-memory-utilization 0.9 --max-model-len 32768