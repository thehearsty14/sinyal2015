function [a,b] = note(f,vurus)                                              %fonksiyon tan�mlad�k arg�manlar� f ve vuru� olan
fs=8192;                                                                    %�rnekleme frekans�
b = 0:1/fs:(vurus-1/fs);                                                    %b tan�m
a = sin(2*pi*f*b);                                                          %sin�s 