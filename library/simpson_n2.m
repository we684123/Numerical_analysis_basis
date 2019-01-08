function s = N3_simpson_3(F,tspan,n) 

if mod(n,2)~= 0
   error('n½Ð¥Î2­¿¼Æ')
end

a = tspan(1);
b = tspan(2);
h = (b-a)/n;
m = n/2-1;
s = 0 ;

for i = 0:1:m
   x = a + 2*(i)*h ;
   sr = (1/3*h) * ( F(x) + 4*F(x+h) + F(x+h*2) );
   s = s + sr ;
end

