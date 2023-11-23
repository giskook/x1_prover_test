#!/bin/bash
while true
do
        top -b -n 1 | grep zkProver >> zkprover.log
        sleep 1
done
