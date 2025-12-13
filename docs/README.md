# Instructions

# Document github actions secrets
- host key
- user id

# TODOs
- 
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

