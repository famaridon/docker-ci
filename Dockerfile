FROM debian:bullseye-slim

ENV NODE_VERSION 14_X

COPY scripts .

RUN ./install.sh