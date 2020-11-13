#!/bin/bash

if [[ $1 == *.sh ]]
  then
    echo "Is an sh file"
    /bin/bash $@
elif [[ $1 == *.py ]]
  then
    echo "Is a py file"
    python $@
else
    echo "Type not recognized. Exiting"
fi
