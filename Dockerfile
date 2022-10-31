FROM nginx:stable-alpine

# install dependencies
RUN apk add --no-cache nano python3 python3-dev py3-pip build-base libressl-dev musl-dev libffi-dev

# install certbot
ENV CRYPTOGRAPHY_DONT_BUILD_RUST=1
RUN pip3 install --no-cache pip --upgrade
RUN pip3 install --no-cache cryptography
RUN pip3 install --no-cache certbot-nginx

RUN mkdir /etc/letsencrypt
