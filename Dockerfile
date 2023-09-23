FROM prometheuscommunity/postgres-exporter:latest

COPY postgres_exporter.yml /postgres_exporter.yml

EXPOSE     9187

ENV DATA_SOURCE_NAME=$DATABASE_URL