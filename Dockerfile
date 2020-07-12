# Node.js official LTS container
FROM node:lts

# Install Sonos Web
RUN npm install sonos-web-cli
RUN sonos-web install

# Start Sonos Web
CMD ["sonos-web","start"]
