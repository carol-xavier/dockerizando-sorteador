FROM node

WORKDIR /usr/

COPY . .

EXPOSE 5000

RUN npm i

# só roda quando darmos docker run
CMD [ "npm", "run", "build", "dev:migrate", "start" ]