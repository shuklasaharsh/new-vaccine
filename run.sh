#!/bin/sh
RED='\033[0;31m'
NC='\033[0m'
if [ $# -lt 4 ]
then
    echo -e "${RED}User Error 1: ${NC}"
    echo -e "Please run the program as: $ run.sh <Time in seconds> <District ID - Refer getDistrict.py> <Age Constraint> <Age>"
    echo -e "$ run.sh 5 395 1 21"
else
  source ./venv/bin/activate
  N=1
  while true
  echo $N - Attempt
  N=$(expr $N + 1)
  do
  clear
  python Main.py $2 $3 $4
  sleep $1
  done
fi
