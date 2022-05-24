#!/bin/bash

API="http://localhost:4741"
URL_PATH="/drinks"

"NAME"="Whatever"
"BASE"="wahe"
"BUILD"="EH"

curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Bearer ${TOKEN}" \
  --data '{
    "drink": {
      "name": "'"${NAME}"'",
      "base": "'"${BASE}"'",
      "build": "'"${BUILD}"'"
    }
  }'

echo
