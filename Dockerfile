FROM golang:alpine

RUN apk add --no-cache git mercurial

RUN go get github.com/alfredyang1986/blackmirror
RUN go get github.com/alfredyang1986/BmServiceDef

LABEL NtmPods.version="1.0.0" maintainer="Clockq"

ADD deploy-config/ /go/bin/
RUN go install -v github.com/PharbersDeveloper/NtmPods

WORKDIR /go/bin

ENTRYPOINT ["BmPods"]
