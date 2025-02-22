FROM mysql:8.0.37-debian

RUN apt update
ENV TZ='America/Sao_Paulo'
RUN apt install tzdata

ENV MYSQL_ROOT_PASSWORD=abc321

COPY sqlInstructions.sql /docker-entrypoint-initdb.d/sqlInstructions.sql

EXPOSE 3306
