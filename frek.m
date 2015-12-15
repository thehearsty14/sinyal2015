function [A]=frek(nota,oktav)                                                %frek ad�nda bir fonksiyon olusturduk   nota,oktav arg�manlar�
notalar={'Do','C#','Re','Eb','Mi','Fa','F#','Sol','G#','La','Bb','Si'};     %notalar� tan�mlad�k
x=strcmp(notalar,nota);                                                     %notaya dizilerde eri�me i�lemi
y=find(x,1);                                                                %indeks e eri�im
A=round(16.35*(2^oktav)*(2^((y-1)/12)));                                    %say�y� en yak�n de�ere yuvarlad�k yuvarlama kodu.