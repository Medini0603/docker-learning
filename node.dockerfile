FROM node:21-alpine3.18
LABEL author="Medini"
ENV NODE_ENV=production
ENV PORT=3000
WORKDIR /var/www
COPY package.json package-lock.json ./

RUN npm install
# RUN npm install --save node:path
COPY . ./
EXPOSE $PORT
ENTRYPOINT [ "npm","start" ]