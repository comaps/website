FROM ghcr.io/getzola/zola:v0.22.1 AS zola

WORKDIR /srv

EXPOSE 1111

CMD ["serve", "--interface", "0.0.0.0", "--base-url", "http://127.0.0.1"]
