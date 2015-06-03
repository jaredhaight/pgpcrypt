# pgpcrypt.sh
This is a real simple script I wrote to make sending encrypted messages to people using PGP a bit easier. 

## How it works

```shell
./pgpcrypt.sh <email address of recipient> <message to encrypt in quotes>
```

## What it does

* Checks to see if you have the public key of the reciepient already
* If you don't, searches a key server to see if the email address has published keys
* Prompts you to download a public key (if found)
* Signs and encrypts the message.
