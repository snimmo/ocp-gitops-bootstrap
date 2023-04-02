FROM quay.io/keycloak/keycloak:latest

COPY ./import /opt/keycloak/data/import

ENTRYPOINT ["/opt/keycloak/bin/kc.sh", "start-dev", "--import-realm"]