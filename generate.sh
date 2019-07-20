#!/bin/bash
if [ "$1" != "" ]; then
    docker run -v $(pwd)/diagrams:/home ryutah/plantuml-cli $1
else
    echo "parameter is empty"
fi
