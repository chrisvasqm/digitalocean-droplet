FROM node:20.13.1-alpine3.20

RUN npm install -g pnpm

RUN addgroup app && adduser -S -G app app
USER app
WORKDIR /app
COPY . .
RUN pnpm install
EXPOSE 3030
CMD ["pnpm" "start"]