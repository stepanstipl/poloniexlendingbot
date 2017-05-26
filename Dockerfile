FROM alpine:3.5
ADD . /opt/poloniexlendingbot
ADD default.cfg.example /opt/poloniexlendingbot/default.cfg

WORKDIR /opt/poloniexlendingbot

RUN apk add --no-cache python py-numpy ca-certificates && \
    python -m ensurepip && \
    rm -r /usr/lib/python*/ensurepip && \
    pip install --upgrade pip setuptools && \
    rm -r /root/.cache

VOLUME /opt/poloniexlendingbot/market_data

EXPOSE 8080

CMD ["/usr/bin/python", "lendingbot.py"]
