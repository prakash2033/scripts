openssl genrsa 1024 > demo.angular.key

openssl req -new -key ./demo.angular.key > demo.angular.csr

openssl x509 -in demo.angular.csr -out demo.angular.crt -req -signkey demo.angular.key -days 365

openssl pkcs12 -export -out demo.angular.pfx -inkey demo.angular.key -in demo.angular.crt
