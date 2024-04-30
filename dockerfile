# Stage 1: Budowa aplikacji
FROM node:16-alpine AS build

WORKDIR /app

COPY package.json ./

RUN npm install --no-cache

COPY . .

ARG VERSION
RUN npm version ${VERSION}

# Stage 2: Uruchomienie aplikacji na serwerze NGINX
FROM nginx:stable-alpine

RUN apk add --no-cache curl

WORKDIR /usr/share/nginx/html

COPY --from=build /app .

COPY nginx.conf /etc/nginx/conf.d/default.conf

COPY start.sh /usr/local/bin/

EXPOSE 80

HEALTHCHECK --interval=10s --timeout=5s \
    CMD curl -f http://localhost:80 || exit 1

CMD ["start.sh"]
