# scripts

# Installing OpenSSL

## Windows
Open SSL 64 bit Download [Link](https://slproweb.com/download/Win64OpenSSL-1_1_1d.exe) for windows

## Linux
To build it from source: 
You can download the latest version openssl from [here](http://www.openssl.org/source/)

```$ tar -xvzf openssl-1.0.1g.tar.gz
$ cd openssl-1.0.1g
$ ./config
$ ./make -j4
$ ./make test
$ sudo make install
```

## You can install directly as well if your package manager supports depending upon your linux distro

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

# Generate Online
## SSL For Free
[SSLForFree.Com](https://www.sslforfree.com/)

## Decoder Link
[DecoderLinkConverter](https://decoder.link/converter)
