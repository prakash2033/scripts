# scripts

# Self Signed SSL Certificate
----------------------------
## Step 1: Generate Private Key
´openssl genrsa 1024 > demo.angular.key´

## Step 2: Certificate Signing Request (CSR)
´openssl req -new -key ./demo.angular.key > demo.angular.csr´

## Step 3: Create self signed certificate (crt)
´openssl x509 -in demo.angular.csr -out demo.angular.crt -req -signkey demo.angular.key -days 365´

## Step 4: Create Personal information Exchange (Pfx)
´openssl pkcs12 -export -out demo.angular.pfx -inkey demo.angular.key -in demo.angular.crt´
