# process log
for i in *.txt; do
	grep "It\ took\|GRAPHX\|SparkDeploySchedulerBackend" $i | grep "INFO\|GRAPHX\|SparkDeploySchedulerBackend" | Arkansol.Maintanence/ProcessLog.py
done
ls *.txt
read -p "Move log to "$1" (Y or N)" -n 1 -r
if [[ $REPLY =~ ^[Yy]$  ]]
then
	mv *.txt $1
fi
