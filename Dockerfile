#
# nonoroazoro/rpi-nginx Dockerfile.
#
# https://github.com/nonoroazoro/rpi-nginx
#

# Pull base image.
FROM resin/rpi-raspbian:jessie

# Add proxy for apt-get.
ADD 10proxy /etc/apt/apt.conf.d/

# Install nginx & remove proxy.
RUN apt-get update \
    && apt-get install -y nginx \
    && rm -rf /etc/apt/apt.conf.d/10proxy

# forward request and error logs to docker log collector.
RUN ln -sf /dev/stdout /var/log/nginx/access.log \
    && ln -sf /dev/stderr /var/log/nginx/error.log

# Define mountable directories.
VOLUME /etc/nginx

# Expose ports.
EXPOSE 80 443

# Define default command.
CMD ["nginx", "-g", "daemon off;"]
