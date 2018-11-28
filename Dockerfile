FROM node:10.14.0

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY .  .

RUN npm install -g http-server
RUN npm install -s
RUN npm run build

# Make port 8000 available to the world outside this container
EXPOSE 8000

CMD [ "http-server", "dist", "-p8000", "-c-1" ]

