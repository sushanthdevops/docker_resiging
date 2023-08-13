FROM node as build
WORKDIR /app
COPY package*.json /app
RUN npm install
RUN cd /app
EXPOSE 8000

FROM 20-alpine3.7 
COPY --from=build . /app
CMD ["node","index.js"]