# scripts

# Self Signed SSL Certificate
----------------------------
## Step 1: Generate Private Key
```openssl genrsa 1024 > filename.key```

## Step 2: Certificate Signing Request (CSR)
```openssl req -new -key ./filename.key > filename.csr```

## Step 3: Create self signed certificate (crt)
```openssl x509 -in filename.csr -out filename.crt -req -signkey filename.key -days 365```

## Step 4: Create Personal information Exchange (Pfx)
```openssl pkcs12 -export -out filename.pfx -inkey filename.key -in filename.crt```
