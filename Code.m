clear
format long
%{
%-----------------Parte 1.----------------------
%Primero
uniforme = rand(1,1000);
gaussiana = randn(1,1000);

%subplot(2,1,1);
%plot(gaussiana)
%subplot(2,1,2); 
%histogram(gaussiana)

DcUnif = sum(uniforme)/1000;
DcGaus = sum(gaussiana)/1000;

potTotalUnif = sum(uniforme.^2)/1000;
potTotalGaus = sum(gaussiana.^2)/1000;

rmsUnif = (sum((uniforme - DcUnif).^2)/1000).^0.5;
rmsGaus = (sum((gaussiana - DcGaus).^2)/1000).^0.5;
%----------------------------------------------------
%Segundo
% t = T*n/N
% -5*sen(2*pi*100*t + pi/4) 
T = 1/100;
n = 0:1:15;
t = n*T/16;
sen = -5*sin(2*pi*100*t + pi/4);
DcSen = sum(sen)/16;
potAcSen = sum((sen - DcSen).^2)/16;
RmsSen = potAcSen^0.5;
%---------------------
% 3*cos(2*pi*200t) + 1
%---------------------
T = 1/200;
n = 0:1:15;
t = n*T/16;
coseno = cos(2*pi*200*t) + 1;
DcCoseno = sum(coseno)/16;
potAcCos = sum((coseno - DcCoseno).^2)/16;
RmsCos = potAcCos^0.5;
%-------------------------
Covarianza = sum(sen.*coseno)/16;
R = Covarianza/(RmsSen*RmsCos);

%}
%-----------------------------------------------------
%---------------Tercero.------------------------------
%-----------------------------------------------------

[Voz,fsVoz] = audioread("voz.wav");
[Audio,fsAudio] = audioread("audio.wav");

%subplot(2,1,1);
%plot(Voz)
%subplot(2,1,2); 
%histogram(Voz)

%fft_clase(Voz,fsVoz);
fft_clase(Audio,fsAudio);
 


























