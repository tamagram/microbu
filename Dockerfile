FROM node:16.13.1-alpine

WORKDIR /usr/src/app
COPY package.json ./
COPY yarn.lock ./
RUN yarn

COPY . .

RUN yarn build
CMD ["yarn", "start"]