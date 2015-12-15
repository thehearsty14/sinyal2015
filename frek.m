function [A]=frek(nota,oktav)                                               %frek ad�nda bir fonksiyon olusturduk   nota,oktav arg�manlar�
notalar={'Do','C#','Re','Eb','Mi','Fa','F#','Sol','G#','La','Bb','Si'};     %notalar� char ile tan�mlad�k dizide
x=strcmp(notalar,nota);                                                     %string in i�inde istedi�imiz de�eri arama
y=find(x,1);                                                                %burdanda notaya eri�iyoruz stringdeki
A=round(16.35*(2^oktav)*(2^((y-1)/12)));                                    %say�y� en yak�n de�ere yuvarlad�k yuvarlama kodu.