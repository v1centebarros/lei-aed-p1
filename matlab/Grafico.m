function Grafico(namefile,x)
%vai buscar o calculo das somas feitas antes do algoritmo 
% bruteforce para cada numero mecanografico (1,2,3)
% clever bruteforce para cada numero mecanografico (4,5,6)
% Horowitz para cada numero mecanografico (7,8,9)
% schroppel para cada numero mecanografico (10,11,12)
switch(x)
    case 1
        somas=load("000000\bruteforce_notz_somas_000000.txt");
    case 2
        somas=load("097787\bruteforce_notz_somas_097787.txt");
    case 3
        somas=load("103823\bruteforce_notz_somas_103823.txt");
    case 4
        somas=load("000000\bruteforce_otz_somas_000000.txt");
    case 5
        somas=load("097787\bruteforce_otz_somas_097787.txt");
    case 6
        somas=load("103823\bruteforce_otz_somas_103823.txt");
    case 7
        somas=load("000000\schroeppel_somas_000000.txt");
    case 8
        somas=load("097787\schroeppel_somas_097787.txt");
    case 9
        somas=load("103823\schoroeppel_somas_103823.txt");
    case 10
         somas=load("000000\schroeppel_somas_000000.txt");
    case 11
        somas=load("097787\schroeppel_somas_097787.txt");
    case 12
        somas=load("103823\schoroeppel_somas_103823.txt");
    case 13
        somas=load("097787\schroppel_somas_128_097787.txt");
    end

    T=load(namefile);%Valores do tempo para cada soma
    T= T+somas';
    [n,~]=size(T);
    N=10:9+n;

    ValorMaximoLinha = max(T'); %ValorMaximoLinha = max(data,[],2);
    %ValorMinimoLinha= min(T'); %ValorMaximoLinha = min(data,[],2);
    media = sum(T,2)/length(N); %media = sum(Q2')/length(N)

    %grafico
    semilogy(N,media)
    hold on
    semilogy(N,ValorMaximoLinha,".-");
    hold on
    %semilogy(N,ValorMinimoLinha,".-");
    %hold on
end


