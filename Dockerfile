FROM node:alpine

WORKDIR /apps
RUN npm install ws node-static
ADD index.html /apps/
ADD server.js /apps/

EXPOSE 8080

ENTRYPOINT ["node", "server.js"]
