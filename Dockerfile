FROM node:14
WORKDIR /
COPY . .
RUN npm install
CMD [ "node","index" ]