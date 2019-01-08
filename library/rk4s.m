function [t,y] = rk4s(f,tspan,y0,n)

a=tspan(1);
%disp(a);
b=tspan(2);
%disp(b);
h=(b-a)/n;
%disp(h);
t=a:h:b;
%disp('T1');
%disp(size(t));
%disp(t);
t = t'; %¦CÂàÄæ [1,11] -> [11,1]
%disp('T2');
%disp(size(t));
%disp(t);
y=y0*ones(n+1,1);

for i=1:n
    k1=h*f(t(i), y(i));
    k2=h*f(t(i)+h/2, y(i)+1/2*k1);
    k3=h*f(t(i)+h/2, y(i)+1/2*k2);
    k4=h*f(t(i+1), y(i)+k3);
    y(i+1) = y(i) + 1/6*(k1 + 2*k2 + 2*k3 + k4);
end