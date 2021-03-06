FROM alpine:3.9

RUN apk --update --no-cache add git build-base linux-headers py3-pip python3-dev postgresql-dev

WORKDIR /home

RUN git clone https://github.com/mozilla/http-observatory.git . && \
    pip3 install --upgrade pip && \
    pip3 install --upgrade . && \
    pip3 install --upgrade -r requirements.txt

USER nobody

ENTRYPOINT ["/usr/bin/httpobs-local-scan"]

CMD ["--help"]

