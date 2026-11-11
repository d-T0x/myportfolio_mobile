#!/bin/bash


COMMAND="$1"

case "$COMMAND" in
    "")
        flutter run -d web-server --web-port 8080
        ;;
    "an")
        flutter analyze
        ;;    
    --help)
        echo -e "./run.sh --> run local server\n"
        echo -e "./run.sh test --> run tests\n"
        echo -e "./run.sh migrate {-c|-m} --> make migration/migrate \n -c : make migration \n -m : migrate 
        "
        ;;
    *)
        echo -e "ERROR: Unknown comman. use '--help' for instructions."
        ;;
esac        