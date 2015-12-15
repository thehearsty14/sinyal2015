function [A]=frek(nota,oktav)                                                %frek adýnda bir fonksiyon olusturduk   nota,oktav argümanlarý
notalar={'Do','C#','Re','Eb','Mi','Fa','F#','Sol','G#','La','Bb','Si'};     %notalarý tanýmladýk
x=strcmp(notalar,nota);                                                     %notaya dizilerde eriþme iþlemi
y=find(x,1);                                                                %indeks e eriþim
A=round(16.35*(2^oktav)*(2^((y-1)/12)));                                    %sayýyý en yakýn deðere yuvarladýk yuvarlama kodu.