docker run --runtime=nvidia --gpus all \
  --name qwen-vllm \
  -v /path/to/Qwen1.5-1.8B-Chat-AWQ:/models \
  -p 8001:8000 \
  -d vllm/vllm-openai:latest \
  --model /models \
  --dtype float16 \
  --gpu-memory-utilization 0.9


模型部署（使用 vLLM 开启 API 和流式响应）：
docker run --gpus all --rm -it -p 8000:8000 \
-v /your/path/to/Qwen1.5-1.8B-Chat-AWQ:/models \
vllm/vllm-openai:latest \
--model /models --dtype auto --quantization awq \
--gpu-memory-utilization 0.9 --max-model-len 32768




参数说明：

/path/to/deepseek-llm-7B-instruct-AWQ：替换为你本地模型的实际路径。

--dtype float16：使用半精度浮点数，减少显存占用。

--gpu-memory-utilization 0.9：设置 GPU 显存利用率为 90%