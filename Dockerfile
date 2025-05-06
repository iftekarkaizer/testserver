FROM nginx:latest

WORKDIR /app

RUN apt-get update -y && apt-get upgrade
RUN apt install nginx -y

COPY . .

EXPOSE 3000

CMD ["nginx", "-g", "daemon off;"]
