#!/bin/sh
path=$(dirname $0)
token=$1

curl -u iet:password -X PUT "http://localhost/basil/$token/view/list?type=text/html" -H "Content-type: template/mustache" -T $path/list.tmpl