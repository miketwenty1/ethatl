#!/bin/bash

file=`ls /home/tidwell/devops-sandbox/Hash-Blaster/provideoutput | sort -nr | head -1`
if [ -z $file ]
then 
  echo "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
else
  mv /home/tidwell/devops-sandbox/Hash-Blaster/provideoutput/$file /home/tidwell/devops-sandbox/Hash-Blaster/provideagg/0; 
  eth=`cat /home/tidwell/devops-sandbox/Hash-Blaster/provideagg/0/$file | grep -oP '(?<=Hash:</td><td>).*?(?=<)'`; 
  echo $eth | shasum -a 256 | cut -d' ' -f1;
fi