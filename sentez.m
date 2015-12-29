[nota,b,c]=textread('notalar.txt','%s %s %s');                              %notalar txt deki de�erleri okur
fs=8192;                                                                    %�rnekleme frekans�
ds=round(fs/100);                                                           %durma s�resi
go=round(fs/10);                                                            %gecikme s�resi
notalar=zeros(1,fs);                                                        %dizi olusturduk �rnekleme frekans� kadar
a=zeros(1,length(notalar));                                                 %0 matrisi olusturduk
durak=zeros(1,ds);                                                          %durma s�resini uzunluga g�re degistirir.
                                                                            
   for i=1:(length(nota))
       oktav((i),1)=str2num(cell2mat(b(i,1)));                              %nota dizisi boyu d�ng�s� olusturduk
       vurus((i),1)=str2num(cell2mat(c(i,1)));                              %convert i�lemi
       frekans((i),1)=frek(nota((i),1),oktav((i),1));                       %frek fonk u cag�rd�k
       [x,t]=note(frekans((i),1),vurus((i),1));                             %note fonk u cag�rd�k
       notalar=[notalar durak x];                                           %birle�tirme i�lemi atama
   end                                                                      
 notalarecho=zeros(1,(length(notalar)));                                    %0 lardan olusan bir dizi
 for i=1:(length(notalar))                                                  %d�ng� olusturduk
     f=(go+i);                                                              %gecikme s�resi d�ng�ye sokuldu
     if f<(length(notalar))                                                 %�art sa�land� ge�imi engellemek i�in
     notalarecho(i)=notalar(i)*0.3+notalar(f);                              %y�zde 30 kayd�rma i�lemi
     else 
      notalarecho(i)=notalar(i)*0.3+0; 
     end
 end 
  normalizenotalarecho=zeros(1,(length(notalar)));                          %normalizasyon i�lemleri i�in de�i�ken tan�mlad�k
  normalizenotalarecho=notalarecho/max(abs(notalarecho));                   %tepe degeri 1 e normalize edilmi�tir.
sound(normalizenotalarecho)                                                 %sinyal

    