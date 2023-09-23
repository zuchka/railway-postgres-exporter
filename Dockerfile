FROM prometheuscommunity/postgres-exporter:latest

# ARG ARCH="amd64"
# ARG OS="linux"
# COPY .build/${OS}-${ARCH}/postgres_exporter /bin/postgres_exporter

COPY postgres_exporter.yml /postgres_exporter.yml

EXPOSE     9187
# USER       nobody
ENV DATA_SOURCE_NAME=$DATABASE_URL
ENTRYPOINT [ "/bin/postgres_exporter" ]
# CMD [--config.file="/etc/postgres_exporter/postgres_exporter.yml"]
