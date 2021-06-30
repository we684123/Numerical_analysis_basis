function [t,y] = midpoint(F,tspan,y0,n)

a=tspan(1);
b=tspan(2);
y = y0;
h=(b-a)/n;
t=a:h:b;
t = t'; %列轉欄 [1,11] -> [11,1]
y=y0*ones(n+1,1);

for i=1:n
     y(i+1)= y(i) + h * F(t(i)+h/2, y(i) + (h/2)*F(t(i) ,y(i)) );
end
