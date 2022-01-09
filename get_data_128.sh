cc -Wall -O3 -DSTUDENT_H_FILE=\"097787_extra.h\" -DMIM subset_sum_problem.c -o subset_sum_problem -lm
./subset_sum_problem | tee ./resultados/schroeppel_128_resultados_somas_097787.txt
python3 converter.py ./resultados/schroeppel_128_resultados_somas_097787.txt > ./resultados/schroeppel_128_resultados_somas_097787_organizado.txt
