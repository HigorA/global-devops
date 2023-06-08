FROM openjdk:17-alpine

RUN apk update && apk add git

WORKDIR /app

RUN git clone https://github.com/HigorA/api_global.git

WORKDIR /app/api_global

EXPOSE 8080

CMD ["./gradlew", "bootRun"]
