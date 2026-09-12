FROM ghcr.io/getzola/zola:v0.23.5 AS zola

WORKDIR /srv

EXPOSE 1111

CMD ["serve", "--interface", "0.0.0.0", "--base-url", "http://127.0.0.1"]
