ARG PGVECTORS_TAG
ARG CLOUDNATIVEPG_VERSION

FROM scratch as nothing
ARG TARGETARCH
FROM tensorchord/pgvecto-rs-binary:$PGVECTORS_TAG-$TARGETARCH as binary

FROM ghcr.io/cloudnative-pg/postgresql:$CLOUDNATIVEPG_VERSION
USER root
COPY --from=binary /pgvecto-rs-binary-release.deb /tmp/vectors.deb
RUN apt-get install -y /tmp/vectors.deb && rm -f /tmp/vectors.deb
USER 26
