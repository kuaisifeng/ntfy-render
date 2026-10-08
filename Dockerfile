FROM binwiederhier/ntfy:latest
CMD ["serve","--listen-http",":10000"]