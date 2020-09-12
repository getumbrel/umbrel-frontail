FROM node:12.18.3-buster-slim

WORKDIR /frontail
ADD . .
RUN npm install --production

ENTRYPOINT ["/frontail/docker-entrypoint.sh"]
EXPOSE 9001
CMD ["--help"]
