x=1:1:10;
y=[2.1 3.2 2.9 2.4 3.3 4.8 7.1 6.2 4.7 5.6];
err=[0.2 0.3 02 0.2 0.3 0.4 1.0 0.9 1.2 1.5];
errorbar(x,y,err,'ro-')
PO=8;
coeff=polyfit(x,y,PO)
x_p=1:0.1:11;
poly8_results=polyval(coeff,x_p);
grid on;  
hold on;
plot(x_p,poly8_results);
axis([0,11,0,10]);