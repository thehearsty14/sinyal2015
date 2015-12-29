function [frekans]=frek(nota,oktav,oktavdegeri)                             %frekans olusturduk
notalar={'Do','Dod','Re','Mib','Mi','Fa','Fad','Sol','Sold','La','Sib','Si','Sus'}; %notalardan olusan bir dizi
n=strcmp(notalar,nota);                                                     
m=find(n,1);                                                                %n deki 1 deðerini buluyor.
        if (nargin==0)                                                      %nargine yazýlan deðer 0 girilmezse kodlarý çalýstýr komutu
                 disp ('veri girisi yap');                        
        elseif (nargin==1)                                                  %tek deðiþken gönderilme durumunda
                 if (m==13)                                                 
                    frekans=0;                                              %sus deðeri 0
                 else                                                       
                    frekans=16.35*(2^(4))*(2^((m-1)/12));                   %frekans hesaplar
                 end                                                        %sus notasý bitirme
        elseif (nargin==2)                                                  
                 if (m==13)                                                 
                    frekans=0;                                              %frekansý 0 yap
                 else                                                       
                    frekans=16.35*(2^(oktav))*(2^((m-1)/12));               %oktav fonka göre frekans üretir
                 end
        else                                                                
                 if (m==13)                                                 %nota degeri sus ise 
                     frekans=0;                                             %frekansý 0 yap
                 else                                                       
                     frekans=16.35*(2^(oktav+oktavdegeri))*(2^((m-1)/12));  %frekans hesaplamasý yapar
                 end


    end

end 
   


