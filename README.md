# vault

## How to init

```
vault operator init -key-shares=5 -key-threshold=3
```

## myapp-policy

### Allow reading database secrets

```
path "secret/data/myapp/database" {
  capabilities = ["read"]
}
```

### Allow reading API keys

```
path "secret/data/myapp/api-keys" {
  capabilities = ["read"]
}
```

### Allow renewing own token

```
path "auth/token/renew-self" {
  capabilities = ["update"]
}
EOF
```
