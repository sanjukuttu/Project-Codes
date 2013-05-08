mkdir cpuset
mount -t cpuset none cpuset/
cd cpuset
mkdir sys
echo 0-2 > sys/cpus 
echo 1 > sys/cpu_exclusive
echo 0 > sys/mems       
mkdir rt
echo 3 > rt/cpus
echo 1 >  rt/cpu_exclusive
echo 0 > rt/mems
echo 0 > rt/sched_load_balance
echo 1 > rt/mem_hardwall
for T in `cat tasks`; do echo "Moving " $T; echo $T > sys/tasks; done

