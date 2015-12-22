Osman Demir
030113013
Sinyal ��leme
Proje : MATLAB ile sentezleme

note.m ;
dosya tipi         : matlab
projedeki g�revi   : sin�s fonksiyonunu grafik elde etme   
i�eri�i            ;

function [xx,zz]=note (f,dur)    
zz=0:1/1000000:dur;              
xx=sin(2*pi*f*zz);                 
plot(zz,xx)                      



frek.m ;
dosya tipi         : matlab
projedeki g�revi   : oktav hesaplama
i�eri�i            ;

function [A]=frek(nota,oktav)                                               
notalar={'Do','C#','Re','Eb','Mi','Fa','F#','Sol','G#','La','Bb','Si'};     
x=strcmp(notalar,nota);                                                     
y=find(x,1);                                                                
A=round(16.35*(2^oktav)*(2^((y-1)/12)));    

notalar.txt ;
dosya tipi          : txt
projedeki g�revi    : oktavlar� d�zenledim. 



Pdf te verilen oktav de�erlerindeki k�yaslamada
1 notan�n oktavlar� aras�nda 2 kat oran vard�r.
�rnek;
Do notas� 1.oktav 32.70
Do notas� 2.oktav 65.40     

                   