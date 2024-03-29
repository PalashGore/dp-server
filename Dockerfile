# Sequence of the execution matters COPY static files after npm install
FROM node:carbon-stretch
WORKDIR /usr/app
COPY ./package.json ./
RUN npm install
COPY ./ ./
EXPOSE 5000
CMD ["npm", "start"]