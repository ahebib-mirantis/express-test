FROM node:20

RUN mkdir -p /app
WORKDIR /app

#only use this build argument for dev
ARG ENVIRONMENT

COPY package.json /app/
RUN if [ "$ENVIRONMENT" = "dev" ]; then npm install; else npm install --production; fi
COPY . /app

CMD [ "npm", "start" ]

EXPOSE 3034