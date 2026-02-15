#!/bin/bash
USER=natas8
PASS='xcoXLmzMkoIP9D7hlgPlh9XD7OgLAe5Q'

curl -fsSL -u $USER:$PASS \
  http://natas8.natas.labs.overthewire.org/index-source.html |
  grep -E "\\\$encodedSecret.+function" -o

ENCODED_SECRET='3d3d516343746d4d6d6c315669563362'
SECRET=$(echo $ENCODED_SECRET | xxd -r -p | rev | base64 -d)

echo "Secret hex : " $ENCODED_SECRET
echo "Secret rev : " $(echo $ENCODED_SECRET | xxd -r -p)
echo "Secret b64 : " $(echo $ENCODED_SECRET | xxd -r -p | rev)
echo "Secret txt : $SECRET"

curl -fsSL -u $USER:$PASS \
  -X POST \
  -H "Content-Type: application/x-www-form-urlencoded" \
  -d "submit=XD&secret=oubWYf2kBq" \
  http://natas8.natas.labs.overthewire.org/index.php |
  grep password
