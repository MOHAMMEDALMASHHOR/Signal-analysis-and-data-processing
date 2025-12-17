x=1:1:10;
y=[-20 10 -12 5 0 -5 4 -16 20 6];
err=[0 1 0.3 0.2 0.5 0.6 1 0.1 0.2 0.3];
errorbar(x,y,err,'ro-')
%10 points--lets make approximation by polynomial po+8
PO=8;
coeff=polyfit(x,y,PO)
x_p=1:0.1:11;
poly8_results=polyval(coeff,x_p);
grid on;  
hold on;
plot(x_p,poly8_results);
%limits for both axes
axis([0,11,-20,6]);
%verdigimiz x sinirlari icindeki egri interpolasyon, arealiktan sonraki egri extrapolasyondur