# use a node base image
FROM node:7-onbuild

# set maintainer
LABEL maintainer "hmengistu@enquizit.com"

# set a health check
HEALTHCHECK --interval=5s \
            --timeout=5s \
            CMD curl -f http://3.88.251.144:8000 || exit 1

# tell docker what port to expose
EXPOSE 8000