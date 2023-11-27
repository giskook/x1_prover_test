for i in $(seq 1 10)
do
       date
       nohup ./build/zkProver -c testvectors/config_runFile_BatchProof.json > result-$i.txt 2>&1 &
       sleep 300
       pid=$(ps -e | grep zkProver | awk '{printf $1}')
       kill -9 $pid
       sleep 60
       echo "--------------------end--------------------" >> ./zkprover.log
done
