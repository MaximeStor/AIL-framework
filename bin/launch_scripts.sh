#!/bin/bash

set -e
set -x

screen -dmS "Script"
sleep 0.1

echo -e $GREEN"\t* Launching ZMQ scripts"$DEFAULT

screen -S "Script" -X screen -t "Global" bash -c './Global.py; read x'
sleep 0.1
screen -S "Script" -X screen -t "Duplicate" bash -c './Duplicate.py; read x'
sleep 0.1
screen -S "Script" -X screen -t "Attribute" bash -c './Attribute.py; read x'
sleep 0.1
screen -S "Script" -X screen -t "Line" bash -c './Line.py; read x'
sleep 0.1
screen -S "Script" -X screen -t "DomainClassifier" bash -c './DomClassifier.py; read x'
sleep 0.1
screen -S "Script" -X screen -t "Categ" bash -c './Categ.py; read x'
sleep 0.1
screen -S "Script" -X screen -t "Tokenize" bash -c './Tokenize.py; read x'
sleep 0.1
screen -S "Script" -X screen -t "CreditCard" bash -c './CreditCard.py; read x'
sleep 0.1
screen -S "Script" -X screen -t "Onion" bash -c './Onion.py; read x'
sleep 0.1
screen -S "Script" -X screen -t "Mail" bash -c './Mail.py; read x'
sleep 0.1
screen -S "Script" -X screen -t "Url" bash -c './Url.py; read x'
sleep 0.1
screen -S "Script" -X screen -t "Credential" bash -c './Credential.py; read x'
sleep 0.1
screen -S "Script" -X screen -t "Curve" bash -c './Curve.py; read x'
sleep 0.1
screen -S "Script" -X screen -t "Indexer" bash -c './Indexer.py; read x'

