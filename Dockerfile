ARG ARCH="amd64"
ARG OS="linux"
FROM prometheuscommunity/postgres-exporter:latest

# ARG ARCH="amd64"
# ARG OS="linux"
# COPY .build/${OS}-${ARCH}/postgres_exporter /bin/postgres_exporter

EXPOSE     9187
USER       nobody
ARG DATA_SOURCE_NAME="postgresql://postgres:G5mznjsmLnnxRwR5fzTW@containers-us-west-129.railway.app:6959/railway"
ENTRYPOINT [ "/bin/postgres_exporter" ]
CMD [ --config.file="postgres_exporter.yml" ]