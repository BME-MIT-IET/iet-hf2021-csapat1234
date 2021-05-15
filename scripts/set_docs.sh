#!/bin/sh
path=$(dirname $0)
token=$1

curl -u iet:password -X PUT http://localhost/basil/$token/docs -H "X-Basil-Name: Concepts of entity" -T $path/docs.txt