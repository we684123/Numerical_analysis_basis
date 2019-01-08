function sr = combo(F,tspan,n) 

a = tspan(1);
b = tspan(2);
h = (b-a)/n;
m = floor(n/4);
s = 0 ;

for i = 1:m
   x = a + 4*(i-1)*h ;
   s4 = (2/45*h) * ( 7*F(x) + 32*F(x+h) + 12*F(x+2*h) + 32*F(x+h*3) + 7*F(x+h*4) ) ;
   s = s + s4 ;
end

x=a-4*m*h ;
sr = 0 ;

switch mod(n,4)
    case 3
        sr = (3/8*h) * ( F(x) + 3*F(x+h) + 3*F(x+h*2) + 3*F(x+h*3) );
    case 2 
        sr = (1/3*h) * ( F(x) + 4*F(x+h) + F(x+h*2) );
    case 1
        sr = (1/2*h) * ( F(x) + F(x+h) );
end

sr = sr + s;