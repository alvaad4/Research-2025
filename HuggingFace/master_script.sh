#echo "---- Uncapped CPU, 6 cores (Default) ----"
#./25q_llama_cpp.sh

#echo "---- Capped CPU to %25 ----"
#systemd-run --scope -p CPUQuota=25% ./25q_llama_cpp.sh
#Too slow to be at all usefull

#echo "---- Capped CPU to %50 ----"
#systemd-run --scope -p CPUQuota=50% ./25q_llama_cpp.sh

echo "---- Capped CPU to %100 ----"
systemd-run --scope -p CPUQuota=100% ./25q_llama_cpp.sh

echo "---- Capped CPU to %200 ----"
systemd-run --scope -p CPUQuota=200% ./25q_llama_cpp.sh

echo "---- Capped CPU to %300 ----"
systemd-run --scope -p CPUQuota=300% ./25q_llama_cpp.sh

echo "---- Capped CPU to %400 ----"
systemd-run --scope -p CPUQuota=400% ./25q_llama_cpp.sh

echo "---- Capped CPU to %500 ----"
systemd-run --scope -p CPUQuota=500% ./25q_llama_cpp.sh

echo "---- Capped CPU to %600 ----"
systemd-run --scope -p CPUQuota=600% ./25q_llama_cpp.sh

echo "---- Capped CPU to %700 ----"
systemd-run --scope -p CPUQuota=700% ./25q_llama_cpp.sh

echo "---- Capped CPU to %800 ----"
systemd-run --scope -p CPUQuota=800% ./25q_llama_cpp.sh

echo "---- Capped CPU to %900 ----"
systemd-run --scope -p CPUQuota=900% ./25q_llama_cpp.sh

echo "---- Capped CPU to %1000 ----"
systemd-run --scope -p CPUQuota=1000% ./25q_llama_cpp.sh

echo "---- Capped CPU to %1100 ----"
systemd-run --scope -p CPUQuota=1100% ./25q_llama_cpp.sh

echo "---- Capped CPU to %1200 ----"
systemd-run --scope -p CPUQuota=1200% ./25q_llama_cpp.sh

#echo "---- Capped RAM to 8GB ----"
#systemd-run --scope -p MemoryLimit=8000M ./25q_llama_cpp.sh

#echo "---- Capped RAM to 8GB and CPU to %10 ----"
#systemd-run --scope -p MemoryLimit=8000M -p CPUQuota=10% ./25q_llama_cpp.sh

#echo "HellaSwag Time"
#./hellaswag.sh
