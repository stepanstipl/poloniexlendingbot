#!/usr/bin/env bash


docker run -it --rm \
           --name plb \
           -p 8080:8080 \
           --env-file .env \
           --restart always \
           quay.io/stepanstipl/plb:latest \
           /usr/bin/python lendingbot.py
