FROM binwiederhier/ntfy:latest

# 清空官方镜像的 ENTRYPOINT，改用 shell 形式以便展开 $PORT
ENTRYPOINT []

# --listen-http 绑定到 Render 注入的 $PORT（默认 10000）
# 缓存文件放到 /tmp（免费层无持久化磁盘）
CMD ["/bin/sh", "-c", "ntfy serve --listen-http :${PORT:-10000} --cache-file /tmp/ntfy/cache.db"]