ARG BASE_IMAGE=nginx:latest
FROM ${BASE_IMAGE}

COPY nginx.conf /etc/nginx/nginx.conf
