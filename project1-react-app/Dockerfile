# setting up base image
FROM node:16.20.1-alpine3.18

# setting working dir
WORKDIR /the/workdir/path

# copying dependency files to workdir
COPY package*.json .

# installing dependencies
RUN npm install

# copying application files to workdir
COPY . .

# setting env-var
ENV app_name = "TEST_APP"

# exposing port (only of doc)
EXPOSE 3000

# adding and setting user 
RUN addgroup app && add user -S -G app app
USER app 

# default instruction
CMD npm start
