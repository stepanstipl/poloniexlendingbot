#!/usr/bin/env bash

docker run -it \
           --name plb \
           -p 8080:8080 \
           --env-file .env \
           --restart always \
           -v /opt/plb/data:/opt/poloniexlendingbot/market_data \
           quay.io/stepanstipl/poloniexlendingbot:latest \
           /usr/bin/python lendingbot.py
