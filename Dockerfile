FROM  node:8

RUN apt update && \
    apt install -y  git
 
# Create app directory
WORKDIR /usr/src/app

# clone source
RUN git clone https://github.com/potaesm/GAbleBot
WORKDIR /usr/src/app/GAbleBot


# Install app dependencies
RUN npm install

# If you are building your code for production
# RUN npm ci --only=production

EXPOSE 3000
# CMD [ "node", "index.js" ]
CMD [ "npm", "run", "start.dev" ]

