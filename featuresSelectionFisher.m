function [out] = featuresSelectionFisher(X, Y)
    X = zscore(X);
    
    alpha = 0.05;
    [correlacion,p]= corrcoef([X,Y],'alpha',alpha);
    
     indicesClase0 = find(Y == 1);
    indicesClase1 = find(Y == 2);
    indicesClase2 = find(Y == 3);
    indicesClase3 = find(Y == 4);
    indicesClase4 = find(Y == 5);
    indicesClase5 = find(Y == 6);
    indicesClase6 = find(Y == 7);
    indicesClase7 = find(Y == 8);
    indicesClase8 = find(Y == 9);
    indicesClase9 = find(Y == 10);
    indicesClase10 = find(Y == 11);
    indicesClase11 = find(Y == 12);
    indicesClase12 = find(Y == 13);
    indicesClase13 = find(Y == 14);
    indicesClase14 = find(Y == 15);
    indicesClase15 = find(Y == 16);
    indicesClase16 = find(Y == 17);
    indicesClase17 = find(Y == 18);
    indicesClase18 = find(Y == 19);
    indicesClase19 = find(Y == 20);
    indicesClase20 = find(Y == 21);
    indicesClase21 = find(Y == 22);
    indicesClase22 = find(Y == 23);
    indicesClase23 = find(Y == 24);
    indicesClase24 = find(Y == 25);
    indicesClase25 = find(Y == 26);
    indicesClase26 = find(Y == 27);
    indicesClase27 = find(Y == 28);
    indicesClase28 = find(Y == 29);
    indicesClase29 = find(Y == 30);
    indicesClase30 = find(Y == 31);
    indicesClase31 = find(Y == 32);
    indicesClase32 = find(Y == 33);
    
    mediaClase0 = mean(X(indicesClase0,:) ,1);
    mediaClase1 = mean(X(indicesClase1,:) ,1);
    mediaClase2 = mean(X(indicesClase2,:) ,1);
    mediaClase3 = mean(X(indicesClase3,:) ,1);
    mediaClase4 = mean(X(indicesClase4,:) ,1);
    mediaClase5 = mean(X(indicesClase5,:) ,1);
    mediaClase6 = mean(X(indicesClase6,:) ,1);
    mediaClase7 = mean(X(indicesClase7,:) ,1);
    mediaClase8 = mean(X(indicesClase8,:) ,1);
    mediaClase9 = mean(X(indicesClase9,:) ,1);
    mediaClase10 = mean(X(indicesClase10,:) ,1);
    mediaClase11 = mean(X(indicesClase11,:) ,1);
    mediaClase12 = mean(X(indicesClase12,:) ,1);
    mediaClase13 = mean(X(indicesClase13,:) ,1);
    mediaClase14 = mean(X(indicesClase14,:) ,1);
    mediaClase15 = mean(X(indicesClase15,:) ,1);
    mediaClase16 = mean(X(indicesClase16,:) ,1);
    mediaClase17 = mean(X(indicesClase17,:) ,1);
    mediaClase18 = mean(X(indicesClase18,:) ,1);
    mediaClase19 = mean(X(indicesClase19,:) ,1);
    mediaClase20 = mean(X(indicesClase20,:) ,1);
    mediaClase21 = mean(X(indicesClase21,:) ,1);
    mediaClase22 = mean(X(indicesClase22,:) ,1);
    mediaClase23 = mean(X(indicesClase23,:) ,1);
    mediaClase24 = mean(X(indicesClase24,:) ,1);
    mediaClase25 = mean(X(indicesClase25,:) ,1);
    mediaClase26 = mean(X(indicesClase26,:) ,1);
    mediaClase27 = mean(X(indicesClase27,:) ,1);
    mediaClase28 = mean(X(indicesClase28,:) ,1);
    mediaClase29 = mean(X(indicesClase29,:) ,1);
    mediaClase30 = mean(X(indicesClase30,:) ,1);
    mediaClase31 = mean(X(indicesClase31,:) ,1);
    mediaClase32 = mean(X(indicesClase32,:) ,1);
    
    media = [mediaClase0; mediaClase1; mediaClase2; mediaClase3; mediaClase4; mediaClase5; mediaClase6; mediaClase7; mediaClase8; mediaClase9; mediaClase10; mediaClase11; mediaClase12; mediaClase13; mediaClase14; mediaClase15; mediaClase16; mediaClase17; mediaClase18; mediaClase19; mediaClase20; mediaClase21; mediaClase22; mediaClase23; mediaClase24; mediaClase25; mediaClase26; mediaClase27; mediaClase28; mediaClase29; mediaClase30; mediaClase31; mediaClase32];
    
    varClase0 = var(X(indicesClase0,:) ,1);
    varClase1 = var(X(indicesClase1,:) ,1);
    varClase2 = var(X(indicesClase2,:) ,1);
    varClase3 = var(X(indicesClase3,:) ,1);
    varClase4 = var(X(indicesClase4,:) ,1);
    varClase5 = var(X(indicesClase5,:) ,1);
    varClase6 = var(X(indicesClase6,:) ,1);
    varClase7 = var(X(indicesClase7,:) ,1);
    varClase8 = var(X(indicesClase8,:) ,1);
    varClase9 = var(X(indicesClase9,:) ,1);
    varClase10 = var(X(indicesClase10,:) ,1);
    varClase11 = var(X(indicesClase11,:) ,1);
    varClase12 = var(X(indicesClase12,:) ,1);
    varClase13 = var(X(indicesClase13,:) ,1);
    varClase14 = var(X(indicesClase14,:) ,1);
    varClase15 = var(X(indicesClase15,:) ,1);
    varClase16 = var(X(indicesClase16,:) ,1);
    varClase17 = var(X(indicesClase17,:) ,1);
    varClase18 = var(X(indicesClase18,:) ,1);
    varClase19 = var(X(indicesClase19,:) ,1);
    varClase20 = var(X(indicesClase20,:) ,1);
    varClase21 = var(X(indicesClase21,:) ,1);
    varClase22 = var(X(indicesClase22,:) ,1);
    varClase23 = var(X(indicesClase23,:) ,1);
    varClase24 = var(X(indicesClase24,:) ,1);
    varClase25 = var(X(indicesClase25,:) ,1);
    varClase26 = var(X(indicesClase26,:) ,1);
    varClase27 = var(X(indicesClase27,:) ,1);
    varClase28 = var(X(indicesClase28,:) ,1);
    varClase29 = var(X(indicesClase29,:) ,1);
    varClase30 = var(X(indicesClase30,:) ,1);
    varClase31 = var(X(indicesClase31,:) ,1);
    varClase32 = var(X(indicesClase32,:) ,1);

    varianza = [varClase0; varClase1; varClase2; varClase3; varClase4; varClase5; varClase6; varClase7; varClase8; varClase9; varClase10; varClase11; varClase12; varClase13; varClase14; varClase15; varClase16; varClase17; varClase18; varClase19; varClase20; varClase21; varClase22; varClase23; varClase24; varClase25; varClase26; varClase27; varClase28; varClase29; varClase30; varClase31; varClase32];    
    
    coef = zeros(1,68);
    
    for i=1:2
        for j=1:2
            if (j ~= i)
                numerador = (media(i,:) - media(j,:)).^2;
                denominador = varianza(i,:) + varianza(j,:);
                coef = coef + (numerador./denominador);
            end
        end
    end
    
    Texto = ['Indice de Fisher: ', num2str(coef)];
    disp(Texto);
    coefN = coef./max(coef);
    save(coefN);
    Texto = ['Indice de Fisher Normalizado: ', num2str(coefN)];
    disp(Texto);

end

