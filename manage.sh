#!/bin/bash

# 检查是否存在 .env 文件
if [ ! -f .env ]; then
    echo "错误: 未发现 .env 配置文件，请根据模板创建。"
    exit 1
fi

case "$1" in
  start)
    docker compose up -d
    echo "AI 中台启动成功！"
    echo "Web UI 访问地址: http://$(grep SERVER_IP .env | cut -d '=' -f2):3000"
    ;;
  stop)
    docker compose stop
    echo "AI 中台已停止。"
    ;;
  restart)
    docker compose restart
    ;;
  update)
    docker compose pull && docker compose up -d
    echo "所有组件已更新至最新版本。"
    ;;
  status)
    docker compose ps
    ;;
  *)
    echo "使用方法: $0 {start|stop|restart|update|status}"
    ;;
esac
