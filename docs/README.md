# Instructions

# Document github actions secrets
- host key
- user id

# TODOs
- 
- Mosquitto server muss von außen verfügbar sein
    - Es gibt Gateways die direkt MQTT Sprechen
    - Mestia schickt MQTT Daten über eine bridge MQTT to MQTT
    - Authentifizierung??

- Letsencrypt certificates und SSL where necessary

- use VPN

- force containers to be run as correct user: chirpstack 1001

- Zugang zu info@alpgeotech.de für Github Account

- change first created user by ansible in other git repo ansible-agt1


- chmod 600 certificate storage for traefik
- use `tecnativa/docker-socket-proxy` to limit access to docker socket `/var/run/docker.sock`
- add hardening for traffic in dynamic configuration
    - middleware.yml
    - tls.yml
- secrets management
- make it so, the deploy workflow can overwrite an existing deployment. !idempotency!

- write instructions on how to continue here to deploy the chirpstack
- document how to get host-key-verification to work
- fix permissions for .env files and maybe other sensitive files
    - `configuration/chirpstack/chirpstack.toml`
    - `.env`
- fix CHIRPSTACK_API_SECRET
- fix:
```
ormation: Try again
chirpstack-1 exited with code 1 (restarting)
chirpstack-1                              | Error: Error occurred while creating a new object: error connecting to server: failed to lookup address information: Try again
chirpstack-1                              |
chirpstack-1                              | Caused by:
chirpstack-1                              |     error connecting to server: failed to lookup address information: Try again
chirpstack-1 exited with code 1 (restarting)
chirpstack-1                              | Error: Error occurred while creating a new object: error connecting to server: failed to lookup address information: Try again
chirpstack-1                              |
chirpstack-1                              | Caused by:
chirpstack-1                              |     error connecting to server: failed to lookup address information: Try again
chirpstack-1 exited with code 1 (restarting)
chirpstack-1                              | Error: Error occurred while creating a new object: error connecting to server: failed to lookup address information: Try again
chirpstack-1                              |
chirpstack-1                              | Caused by:
chirpstack-1                              |     error connecting to server: failed to lookup address information: Try again
chirpstack-1 exited with code 1 (restarting)
```

