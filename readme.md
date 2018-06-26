### This project is about how to use mysql as storage backend for Vault

Status: **in development**

Vault is launched in production mode

### Usage

Vault docker environment was redesigned to apply additional scripts before it's running.
Locate your scripts in folder `./docker-entrypoint.d`.
In docker container this folder is mount into `/docker-entrypoint.d`.

Currently we have next list of important scripts:

1. Generating vault config, related to env variables.
1. Waiting for mysql will be ready.

```
$ docker-compose up -d
```

To see vault output, execute next command: `docker-compose logs vault` and you
will see smth like next:

```
$ docker-compose logs vault
Attaching to vault-with-mysql-integration_vault_1
vault_1  | ==> Vault server configuration:
vault_1  |
vault_1  |                      Cgo: disabled
vault_1  |               Listener 1: tcp (addr: "0.0.0.0:8200", cluster address: "127.0.0.1:8201", tls: "disabled")
vault_1  |                Log Level: info
vault_1  |                    Mlock: supported: true, enabled: true
vault_1  |                  Storage: mysql
vault_1  |                  Version: Vault v0.10.3
vault_1  |              Version Sha: c69ae68faf2bf7fc1d78e3ec62655696a07454c7
vault_1  |
vault_1  | ==> Vault server started! Log data will stream in below:
vault_1  |

```

### Configuring

The easiest way to init vault, by using Vault UI: locally you can open it by url:
http://localhost:8200/ui and go step by step by wizard instructions.
