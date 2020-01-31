# Run with:
# 1: docker build . // -> imageId
# 2: docker run -p 8080:80 <imageId>

FROM node:alpine as builder
WORKDIR '/app'
COPY package.json .
RUN yarn install
COPY . .
RUN yarn build

FROM nginx
EXPOSE 80
COPY --from=builder /app/build /usr/share/nginx/html