FROM node:20-alpine

WORKDIR /app

COPY app/package.json ./package.json
RUN npm install --omit=dev

COPY app/ ./

ENV PORT=3000
ENV DATA_DIR=/data

EXPOSE 3000

CMD ["npm", "start"]
