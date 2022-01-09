#!bin/bash

# echo "Para o 00000.h"
# cc -Wall -O3 -DSTUDENT_H_FILE=\"000000.h\" -DBTF_RCR_NOTM subset_sum_problem.c -o subset_sum_problem -lm
# ./subset_sum_problem | tee ./resultados/bruteforce_notz_resultados_somas_000000.txt
# python3 converter.py ./resultados/bruteforce_notz_resultados_somas_000000.txt > ./resultados/bruteforce_notz_resultados_somas_000000_organizado.txt

# sleep 5

# echo "Para o 97787.h"
# cc -Wall -O3 -DSTUDENT_H_FILE=\"097787.h\" -DBTF_RCR_NOTM subset_sum_problem.c -o subset_sum_problem -lm
# ./subset_sum_problem | tee ./resultados/bruteforce_notz_resultados_somas_097787.txt
# python3 converter.py ./resultados/bruteforce_notz_resultados_somas_097787.txt > ./resultados/bruteforce_notz_resultados_somas_097787_organizado.txt

# sleep 5

# echo "Para o 103823.h"

# cc -Wall -O3 -DSTUDENT_H_FILE=\"103823.h\" -DBTF_RCR_NOTM subset_sum_problem.c -o subset_sum_problem -lm
# ./subset_sum_problem | tee ./resultados/bruteforce_notz_resultados_somas_103823.txt
# python3 converter.py ./resultados/bruteforce_notz_resultados_somas_103823.txt > ./resultados/bruteforce_notz_resultados_somas_103823_organizado.txt

#* Para o BRUTEFORCE_OTMZ

echo "Para o 00000.h"
cc -Wall -O3 -DSTUDENT_H_FILE=\"000000.h\" -DBTF_RCR_OTM subset_sum_problem.c -o subset_sum_problem -lm
./subset_sum_problem | tee ./resultados/bruteforce_otz_resultados_somas_000000.txt
python3 converter.py ./resultados/bruteforce_otz_resultados_somas_000000.txt > ./resultados/bruteforce_otz_resultados_somas_000000_organizado.txt

sleep 5

echo "Para o 97787.h"
cc -Wall -O3 -DSTUDENT_H_FILE=\"097787.h\" -DBTF_RCR_OTM subset_sum_problem.c -o subset_sum_problem -lm
./subset_sum_problem | tee ./resultados/bruteforce_otz_resultados_somas_097787.txt
python3 converter.py ./resultados/bruteforce_otz_resultados_somas_097787.txt > ./resultados/bruteforce_otz_resultados_somas_097787_organizado.txt

sleep 5

echo "Para o 103823.h"

cc -Wall -O3 -DSTUDENT_H_FILE=\"103823.h\" -DBTF_RCR_OTM subset_sum_problem.c -o subset_sum_problem -lm
./subset_sum_problem | tee ./resultados/bruteforce_otz_resultados_somas_103823.txt
python3 converter.py ./resultados/bruteforce_otz_resultados_somas_103823.txt > ./resultados/bruteforce_otz_resultados_somas_103823_organizado.txt