#!/bin/bash

START=2
FINAL=100

TEMP="template_String_const1"

i=$START
j=$(($i - 1))
while [ $i -le $FINAL ]
do
   if [ ! -d String${i} ]; then
      mkdir String${i}
   fi

   if [ $i -eq 1 ]; then
      cp ${TEMP}.inp String${i}.inp
   else
      cp String${j}/String${j}.inp String${i}/String${i}.inp
      sed -i -e "8c\rstfile = ../String${j}/{}.rst" String${i}/String${i}.inp
   fi

   i=$(($i + 1))
   j=$(($j + 1))
done

