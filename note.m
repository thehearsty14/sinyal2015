
function [xx,zz]=note (f,dur)    %fonksiyon olu�turduk arg�manlar� f ve dur
zz=0:1/1000000:dur;              %zaman aral��� 0 dan dura kadar artma miktar�
xx=sin(2*pi*f*zz);               %sin�s denklemi  
plot(zz,xx)                      %grafik �izimi
