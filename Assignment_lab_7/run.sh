#!/bin/bash

clear

if [ $1 -eq 1 ]
  then
  gcc ../lab6/Prob1/t.c -o r
else
  gcc ../lab6/Prob1/tt.c -o r
fi

./r

rm -rf r