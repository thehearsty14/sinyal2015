function [frekans]=frek(nota,oktav,oktavdegeri)                             %frekans olusturduk
notalar={'Do','Dod','Re','Mib','Mi','Fa','Fad','Sol','Sold','La','Sib','Si','Sus'}; %notalardan olusan bir dizi
n=strcmp(notalar,nota);                                                     
m=find(n,1);                                                                %n deki 1 de�erini buluyor.
        if (nargin==0)                                                      %nargine yaz�lan de�er 0 girilmezse kodlar� �al�st�r komutu
                 disp ('veri girisi yap');                        
        elseif (nargin==1)                                                  %tek de�i�ken g�nderilme durumunda
                 if (m==13)                                                 
                    frekans=0;                                              %sus de�eri 0
                 else                                                       
                    frekans=16.35*(2^(4))*(2^((m-1)/12));                   %frekans hesaplar
                 end                                                        %sus notas� bitirme
        elseif (nargin==2)                                                  
                 if (m==13)                                                 
                    frekans=0;                                              %frekans� 0 yap
                 else                                                       
                    frekans=16.35*(2^(oktav))*(2^((m-1)/12));               %oktav fonka g�re frekans �retir
                 end
        else                                                                
                 if (m==13)                                                 %nota degeri sus ise 
                     frekans=0;                                             %frekans� 0 yap
                 else                                                       
                     frekans=16.35*(2^(oktav+oktavdegeri))*(2^((m-1)/12));  %frekans hesaplamas� yapar
                 end


    end

end 
   


