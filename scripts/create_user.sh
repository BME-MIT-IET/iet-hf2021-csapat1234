#!/bin/sh
path=$(dirname $0)

curl -v -X POST http://localhost/basil/users -d @$path/user.json --header "Content-Type: application/json"

