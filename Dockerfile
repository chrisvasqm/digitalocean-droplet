FROM node:20.13.1-alpine3.20
WORKDIR /app
COPY . .
RUN npm install -g pnpm
RUN pnpm install
EXPOSE 3030
CMD pnpm start