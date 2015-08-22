FROM node:0.8

WORKDIR /app

# install libgmp-dev for fast crypto and 
RUN apt update && \
    apt install -y libgmp-dev

# Install node requirements and clean up unneeded cache data
COPY . /app
RUN npm install && \
    rm -rf /root/.node-gyp && \
    apt-get clean
