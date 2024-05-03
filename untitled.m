data=readtable('heart_data.csv');
save('heartdata.mat','data');
load("heartdata.mat");
%Edad de años a días
data.age=data.age/365
%Variables a Boleano
data.smoke=categorical(data.smoke,[0,1],{'Si','No'})
data.alco=categorical(data.alco,[0,1],{'Si','No'})
data.active=categorical(data.active,[0,1],{'Si','No'})
data.cardio=categorical(data.cardio,[0,1],{'Si','No'})


%Formula de el IMC
data.index = data.weight ./ (data.height.^2);
%Clasificacion segun los estándares de la Organización Mundial de la Salud
clasificacion = cell(size(data.index));
clasificacion(data.index < 18.5) = {'Bajo peso'};
clasificacion(data.index >= 18.5 & data.index < 25) = {'Normal'};
clasificacion(data.index>= 25 & data.index< 30) = {'Sobrepeso'};
clasificacion(data.index >= 30) = {'Obeso'};
presion=cell(size(data))
Presion = (data.ap_hi + 2*data.ap_lo)/3

 

