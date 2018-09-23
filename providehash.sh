#!/bin/bash

if ps -ef | grep "[d]o_hybrid.node222" > /dev/null
then
    echo "something weird happened"
else

    snode=`hostname`_hybrid_1

    nohup jmeter -n -t jmx/providehashes.jmx \
    -Jthreads 1 \
    -Jstartblock 2213325 \
    -Jinflux 1.1.1.1 \ #privacy
    -Jdir /home/tidwell/devops-sandbox/Hash-Blaster/provideoutput > logs/provide 2>&1 &
fi
