FROM golang:1.21.4-alpine

RUN mkdir /app

#make grup
RUN addgroup -S bimagroup 
#make user
RUN adduser -S -D -h /app bimauser bimagroup 
#change owner
RUN chown -R bimauser:bimagroup /app 

#change user
USER bimauser 

COPY main.go /app

EXPOSE 8080

CMD go run /app/main.go