clc
clear all
close all

% Datos correspondientes a las entrada, 1059 canciones de 68 caracteristicas. %
load('data/tracks.mat');
% Datos correspondientes a las entrada, 1059 canciones de 31 caracteristicas extraidas con PCA. %
load('data/tracks_31_features_ext.mat');
% Datos correspondientes a las entrada, 1059 canciones de 19 caracteristicas seleccionadas con SFS. %
load('data/tracks_19_features_sel.mat');
% Datos correspondientes a las salidas, coordenadas de las 1059 canciones, longitud y latitud. %
load('data/coordinates.mat');
% Datos correspondientes a las salidas, se agrupan las coordenadas en 33 zonas. %
load('data/countries.mat');
% Datos de salida representados en binarios %
load('data/mask.mat');

data = [tracks countries];
data_ext = [tracks_31_features_ext countries];
data_sel = [tracks_19_features_sel countries];

optionStr = 'Opciones: \n1. K Vecinos mas Cercanos.\n2. Redes Neuronales Artificiales\n3. Random Forest.\n4. Maquinas de Soporte Vectorial.\n5. Seleccionar caracteristicas con indices de Fisher.\n6. Seleccionar caracteristicas con SFS\n\nIngrese la opcion deseada: ';
option2Str = '\n\n1. Con todas las caracteristica.\n2. Con seleccion de caracteristicas (SFS)\n3. Con extraccion de caracteristicas (PCA).\n\nIngrese la opcion deseada: '; 
option = input(optionStr);

% K Vecinos mas cercanos %
if option == 1
    option2 = input(option2Str);
    if option2 == 1
        trainClassifierKNN(data);
    end
    if option2 == 2
        trainClassifierKNNsel19features(data_sel);
    end
    if option2 == 3
        trainClassifierKNNwithPCA(data);
    end
end

% Redes Neuronales Artificiales %
if option == 2
    option2 = input(option2Str);
    if option2 == 1
        trainClassifierRNA(tracks, mask);
    end
    if option2 == 2
        trainClassifierRNA(tracks_19_features_sel, mask);
    end
    if option2 == 3
        trainClassifierRNA(tracks_31_features_ext, mask);
    end
end

% Random Forest %
if option == 3
    option2 = input(option2Str);
    if option2 == 1
        trainClassifierRF(tracks, countries);
    end
    if option2 == 2
        trainClassifierRF(tracks_19_features_sel, countries);
    end
    if option2 == 3
        trainClassifierRF(tracks_31_features_ext, countries);
    end
end

% Maquinas de Soporte Vectorial %
if option == 4
    option2 = input(option2Str);
    if option2 == 1
        trainClassifierSVM(data);
    end
    if option2 == 2
        trainClassifierSVMsel19features(data_sel);
    end
    if option2 == 3
        trainClassifierSVMwithPCA(data);        
    end
end

% Seleccion Fisher %
if option == 5
    featuresSelectionFisher(tracks, countries);
end

% Seleccion Busqueda secuencial %
if option == 6
    featuresSelectionSFS(tracks, countries);
end
