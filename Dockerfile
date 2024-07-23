FROM node:18-alpine

WORKDIR /app

COPY package.json .

RUN yarn set version stable

RUN yarn

COPY . .

RUN yarn build-only

EXPOSE 5173

CMD [ "yarn", "serve" ]