ARG ORG_NAME
ARG BASE_IMAGE_TAG=1.28.0
# FROM nginx:${BASE_IMAGE_TAG}
FROM ${ORG_NAME}/dhi-nginx:${BASE_IMAGE_TAG}

COPY nginx.conf /etc/nginx/nginx.conf
