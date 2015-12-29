function[x,t]=note(frekans,vurus)                                           % sinüs sinyalini i çizdiriyoruz
    fs=8192;                                                                %örnekleme sayýsý
    t=0:1/fs:vurus-(1/fs);                                                  %periyot tanýmlandý
       a=length(t);                                                         %a deðiþkenini tanýmladýk
    hk=[1 0.8 0.4 0.1];                                                     
        b=length(hk);                                                       %b deðiþkeni tanýmlandý
        x=zeros(1,a);                                                       %x matrisi tanýmladýk
        for i=1:b                                                           %1 den dizi boyutuna kadar bir deðiþken olusturuldu
            x=x+(hk(i)*sin(2*pi*(i*frekans)*t));                            
        end
A=linspace(0,1.5,a/4);                                                      
B=linspace(1.5,1,a/8);                                                     
C=linspace(1,1,a/2);                                                        % vektörleri olusturduk
D=linspace(1,0,a/8);                                                        
 zarf=[A B C D];                                                            %vektörleri diziye aldýk
 x=x.*zarf;