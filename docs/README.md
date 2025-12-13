# Instructions



# TODOs
- Document github actions secrets management
    - host key
    - user id

- Letsencrypt certificates und SSL where necessary
- Zugang zu info@alpgeotech.de für Github Account
- use `tecnativa/docker-socket-proxy` to limit access to docker socket `/var/run/docker.sock`
- add hardening for traffic in dynamic configuration
    - middleware.yml
    - tls.yml
- write instructions on how to continue here to deploy the chirpstack
- document how to get host-key-verification to work
- fix permissions for .env files and maybe other sensitive files
    - `configuration/chirpstack/chirpstack.toml`
    - `.env`

- fix redis warning
```
redis-1       | 1:C 13 Dec 2025 20:40:49.741 # WARNING Memory overcommit must be enabled! Without it, a background save or replication may fail under low memory condition. Being disabled, it can also cause failures without low memory condition, see https
://github.com/jemalloc/jemalloc/issues/1328. To fix this issue add 'vm.overcommit_memory = 1' to /etc/sysctl.conf and then reboot or run the command 'sysctl vm.overcommit_memory=1' for this to take effect.
```
