# setting up base image
FROM node:16.20.1-alpine3.18

# adding and setting user 
RUN addgroup app && adduser -S -G app app
USER app 

# setting working dir
WORKDIR /app

# copying dependency files to workdir
COPY package*.json .

# installing dependencies
RUN npm install

# copying application files to workdir
COPY . .

# setting env-var
ENV APP_NAME = "TEST_APP"

# exposing port (only of doc)
EXPOSE 3000

# default instruction
CMD ["npm", "start"]