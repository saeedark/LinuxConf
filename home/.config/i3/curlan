#!/bin/bash

# get  the result of
# xset -q | grep -A 0 'LED' | cut -c59-67
#$ledmask = exec xset -q | grep -A 0 'LED' | cut -c59-67
#if [$ledmask == 00000000 ]
#then
#  echo "EN"
#elif [$ledmask == 00001004]
#then
#  echo "PA"
#else
#  echo "unknown"
#fi

# the last one will hange with num and caps so must to ignorance is kind
ledmask="$(xset -q | grep -A 0 'LED' | cut -c59-65)"
#echo "${ledmask}"
ledfa="0000100"
leden="0000000"
if [ $ledmask = $ledfa ];
then
  echo "فا"
elif [ $ledmask = $leden ];
then
  echo "En"
else
  echo "unknown  ${ledmask}"
fi
