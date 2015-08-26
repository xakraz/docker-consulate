## Based on project https://github.com/gmr/consulate
## --
## Docker image to have a portable CLI utility
## without Python VirtualEnv
##
FROM gliderlabs/alpine:3.1


RUN echo "==> Installing dependencies ..." \
 && apk update \
 && apk add python py-pip \
 && echo "==> Installl Consulate tool ..." \
 && pip install consulate==0.6.0 \
 && echo "==> Cleaning ..." \
 && rm -rf /var/cache/apk/*

 ENTRYPOINT ["consulate"]
