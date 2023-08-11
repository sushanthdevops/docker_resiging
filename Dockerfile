FROM node
WORKDIR /app
RUN npm install
COPY . /app
RUN cd /app
EXPOSE 8000
CMD ["node","index.js"]