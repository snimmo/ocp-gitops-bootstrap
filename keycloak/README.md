## Keycloak for OCP

## External Keycloak Setup

To update the realm, start the local instance, make the changes, export and then build.   
```
podman-compose up -d
podman exec -it keycloak /opt/keycloak/bin/kc.sh export --file /tmp/ocp-snimmo-realm.json --realm ocp-snimmo --users realm_file
podman cp keycloak:/tmp/ocp-snimmo-realm.json ~/Projects/github/snimmo/ocp-gitops-bootstrap/keycloak/import/ocp-snimmo-realm.json
podman build -t quay.io/snimmo/ocp-keycloak:latest -f keycloak.containerfile .
```