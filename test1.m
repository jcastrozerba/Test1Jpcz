clearvars 
close all
x=3:9;
y=[-2 3 4 6 13 14 16];
plot(x,y,'.','markersize',20);
xlabel('x axis')
ylabel('y axis')

 %First we fit a line to this data 

 n=numel(x);
 A=[ones(n,1) x']
 coeff=A\y'% compute the coeff by least squares
 xplot=2:0.02:10;
 yfit=coeff(1) + coeff(2)*xplot;
 hold 
 plot(xplot,yfit,'-')