#!/bin/sh
path=$(dirname $0)

curl -u iet:password -X PUT "http://localhost/basil" -H "X-Basil-Endpoint: http://dbpedia.org/sparql" -T $path/api.sparql