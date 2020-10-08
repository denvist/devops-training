FROM node

RUN mkdir /app
WORKDIR /app
COPY package.json .
RUN yarn install

COPY . .
#RUN yarn test
RUN yarn build

CMD yarn start
EXPOSE 3000
