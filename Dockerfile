FROM node as build
WORKDIR /app
COPY package*.json /app
RUN npm install
RUN cd /app
EXPOSE 8000

FROM alpine:3.17
COPY --from=build . /app
CMD ["node","index.js"]
