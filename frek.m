function [A]=frek(nota,oktav)                                               %frek adýnda bir fonksiyon olusturduk   nota,oktav argümanlarý
notalar={'Do','C#','Re','Eb','Mi','Fa','F#','Sol','G#','La','Bb','Si'};     %notalarý char ile tanýmladýk dizide
x=strcmp(notalar,nota);                                                     %string in içinde istediðimiz deðeri arama
y=find(x,1);                                                                %burdanda notaya eriþiyoruz stringdeki
A=round(16.35*(2^oktav)*(2^((y-1)/12)));                                    %sayýyý en yakýn deðere yuvarladýk yuvarlama kodu.