FROM node:16-alpine as stage-1
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .

FROM stage-1 as stage-final
RUN npm install --production
CMD ["node","index.js"]
