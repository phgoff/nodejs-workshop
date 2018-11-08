FROM node:10-alpine
WORKDIR /nodejs-ws
COPY ./package*.json ./
RUN npm install --production && npm cache clean --force
COPY ./src ./src
ENV NODE_ENV=production
ENV PORT=3000
EXPOSE ${PORT}
CMD [ "npm" , "start"]