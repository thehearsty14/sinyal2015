function[x,t]=note(frekans,vurus)                                           % sin�s sinyalini i �izdiriyoruz
    fs=8192;                                                                %�rnekleme say�s�
    t=0:1/fs:vurus-(1/fs);                                                  %periyot tan�mland�
       a=length(t);                                                         %a de�i�kenini tan�mlad�k
    hk=[1 0.8 0.4 0.1];                                                     
        b=length(hk);                                                       %b de�i�keni tan�mland�
        x=zeros(1,a);                                                       %x matrisi tan�mlad�k
        for i=1:b                                                           %1 den dizi boyutuna kadar bir de�i�ken olusturuldu
            x=x+(hk(i)*sin(2*pi*(i*frekans)*t));                            
        end
A=linspace(0,1.5,a/4);                                                      
B=linspace(1.5,1,a/8);                                                     
C=linspace(1,1,a/2);                                                        % vekt�rleri olusturduk
D=linspace(1,0,a/8);                                                        
 zarf=[A B C D];                                                            %vekt�rleri diziye ald�k
 x=x.*zarf;