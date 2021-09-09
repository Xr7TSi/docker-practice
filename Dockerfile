FROM node:15
WORKDIR /app
COPY package.json /app
RUN npm install
COPY . ./
ENV PORT 3000
EXPOSE $PORT
CMD ["npm", "run", "dev"]
# bind mount volume allows folder on local maching to a folder in the docekr container

