clc
clear
close all

%000000
figure(1)
Grafico ("000000\bruteforce_notz_resultados_somas_000000_organizado.txt",1); %bruteforce para 64 bits
Grafico ("000000\bruteforce_otz_resultados_somas_000000_organizado.txt",4); %clever brute force para 64 bits
Grafico ("000000\horowitz_resultados_somas_000000_organizado.txt",7); %horowitz and sahni technique para 64 bits
Grafico ("000000\schroeppel_resultados_somas_000000_organizado.txt",10); %schroeppel and shamir technique para 64 bits

grid on;
title("000000.h")
legend( "Média BTF", "Pior Caso BTF", "Média Clever BTF", "Pior Caso  Clever BTF", "Média Horowitz", "Pior Caso Horowitz","Médio Schroeppel ", "Pior Caso Schroeppel");
xlabel("Valores de N");
ylabel("Time(segundos)");
hold off;

%097787
figure(2)
Grafico ("097787\bruteforce_notz_resultados_somas_097787_organizado.txt",2); %bruteforce para 64 bits
Grafico ("097787\bruteforce_otz_resultados_somas_097787_organizado.txt",5); %clever brute force para 64 bits
Grafico ("097787\horowitz_resultados_somas_097787_organizado.txt",8); %horowitz and sahni technique para 64 bits
Grafico ("097787\schroeppel_resultados_somas_097787_organizado.txt",11); %schroeppel and shamir technique para 64 bits
% Grafico ("097787\schroeppel_128_resultados_somas_097787_organizado.txt",13); %schroeppel and shamir technique(128)

grid on;
title("097787.h")
legend( "Média BTF", "Pior Caso BTF", "Média Clever BTF", "Pior Caso  Clever BTF", "Média Horowitz", "Pior Caso Horowitz","Médio Schroeppel ", "Pior Caso Schroeppel ");
xlabel("Valores de N");
ylabel("Time(segundos)");
hold off;

%103823
figure(3)
Grafico ("103823\bruteforce_notz_resultados_somas_103823_organizado.txt",3); %bruteforce para 64 bits
Grafico ("103823\bruteforce_otz_resultados_somas_103823_organizado.txt",6); %clever brute force para 64 bits
Grafico ("103823\horowitz_resultados_somas_103823_organizado.txt",9); %horowitz and sahni technique para 64 bits
Grafico ("103823\schroeppel_resultados_somas_103823_organizado.txt",12); %schroeppel and shamir technique para 64 bits

grid on;
title("103823.h")
legend( "Média BTF", "Pior Caso BTF", "Média Clever BTF", "Pior Caso  Clever BTF", "Média Horowitz", "Pior Caso Horowitz","Médio Schroeppel ", "Pior Caso Schroeppel ");
xlabel("Valores de N");
ylabel("Time(segundos)");
hold off;
