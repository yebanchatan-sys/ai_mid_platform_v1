# 本地高性能 AI 算力中台 (NAS + 私有云)

## 快速开始
1. **环境要求**: 安装 Docker, NVIDIA Container Toolkit, 并挂载 NAS 到本地。
2. **配置**: 修改 `.env` 文件中的 `NAS_PATH` 和 `SERVER_IP`。
3. **运行**: 执行 `./manage.sh start` 启动服务。

## 默认端口
- Open WebUI: 3000 (交互界面)
- Ollama API: 11434 (模型推理)
- Qdrant: 6333 (向量库)
- n8n: 5678 (自动化流)
