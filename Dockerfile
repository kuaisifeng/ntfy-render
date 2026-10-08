FROM binwiederhier/ntfy:latest

ENTRYPOINT []

CMD ["/bin/sh", "-c", "mkdir -p /tmp/ntfy && ntfy serve --listen-http :${PORT:-10000} --cache-file /tmp/ntfy/cache.db"]