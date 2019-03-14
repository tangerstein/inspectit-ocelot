FROM node:10-alpine
RUN npm install -g selenium-side-runner
COPY ./docker-entrypoint.sh /docker-entrypoint.sh
RUN chmod +x /docker-entrypoint.sh
COPY ./wait-for-it.sh /wait-for-it.sh
RUN chmod +x /wait-for-it.sh
ENTRYPOINT [ "/docker-entrypoint.sh" ]