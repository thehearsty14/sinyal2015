
function [xx,zz]=note (f,dur)    %fonksiyon oluþturduk argümanlarý f ve dur
zz=0:1/1000000:dur;              %zaman aralýðý 0 dan dura kadar artma miktarý
xx=sin(2*pi*f*zz);               %sinüs denklemi  
plot(zz,xx)                      %grafik çizimi
