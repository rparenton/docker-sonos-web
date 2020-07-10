# Dockerfile to build an arm32v7 image on an x86 build host

# Balena base image required for cross-build capabilities
# Pin to Debian Stretch and Node 12 to avoid build/installation issues
FROM balenalib/raspberrypi3-debian-node:12.14.0-stretch-build

RUN npm install -g sonos-web-cli
RUN sonos-web install

EXPOSE 5050

CMD cd /root/.sonos-web && node src/server.js
