#!/bin/sh

echo "Waiting for MongoDB to start..."
./wait-for database:27017 

echo "Migrating the databse..."
npm run database:up 

echo "Starting the server..."
npm start 