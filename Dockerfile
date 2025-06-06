ARG BASE_IMAGE=nginx:1.28.0
FROM ${BASE_IMAGE}

COPY nginx.conf /etc/nginx/nginx.conf
