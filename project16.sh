#!/bin/bash

#Appel ficher source
source search.sh
source week.sh
source before_week.sh
source per.sh
source save.sh
source searchtmp.sh
source help.sh
#test sur les arguemnt

if [[ $# -ne 0 ]]; then #num d'argement != 0
case $1 in
  "-search")
  if [[ $2 != "" ]]; then
    #statements
    search $2
  else
      echo "enter l'extension"
  fi
    ;;
  "-week")
  week
    ;;
  "-before-week")
  before_week
  ;;
  "-search-tmp")
  searchtmp
  ;;
  "-per")
  per
    ;;
  "-s")
  save
  ;;
  "-help" | "-h")
  help
  ;;
  *) #default
  echo "error arrguemnt "
  ;;
esac


else
  echo "verfier le nombre des argement"
fi
