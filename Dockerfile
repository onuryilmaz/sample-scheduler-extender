FROM golang:1.15.7-buster

ADD . /go/src/github.com/onuryilmaz/sample-scheduler-extender
WORKDIR /go/src/github.com/onuryilmaz/sample-scheduler-extender
 
RUN go build -v -o main .

EXPOSE 8888


CMD ["/go/src/github.com/onuryilmaz/sample-scheduler-extender"]