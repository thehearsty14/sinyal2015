function [a,b] = note(f,vurus)                                              %fonksiyon tanýmladýk argümanlarý f ve vuruþ olan
fs=8192;                                                                    %örnekleme frekansý
b = 0:1/fs:(vurus-1/fs);                                                    %b taným
a = sin(2*pi*f*b);                                                          %sinüs 