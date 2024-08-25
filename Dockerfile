
FROM node:18

WORKDIR /app

COPY . .

CMD ["tail", "-f", "/dev/null"]
