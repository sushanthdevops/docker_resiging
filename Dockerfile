FROM node
WORKDIR /app
COPY . /app
RUN npm install
RUN cd /app
EXPOSE 8000
CMD ["node","index.js"]
