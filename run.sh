 docker run -it \
  -e 'PORT=8080' \
  -e 'SSL_CERT=domaina.local.pem' \
  -e 'SSL_KEY=domaina.local-key.pem' \
  -e 'DOMAIN=domaina.local' \
  -p 443:443 \
  -v "$(pwd)"/ssl:/etc/nginx/ssl/ \
  --rm local-proxy
