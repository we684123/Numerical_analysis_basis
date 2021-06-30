% 函式
f = @(t,y) (1+2*t)*(y^(1/2)); 
% 初值
y0 = 1; 
% 區間
tspan = [0 1]; 
% 幾等份 , % 換算後 h=0.05
n = 20; 

[tt1,yy1] = heun(f,tspan,y0,n);
[tt2,yy2] = midpoint(f,tspan,y0,n);
[tt3,yy3] = rk4s(f,tspan,y0,n);

str = ['heun  ' , 'midpoint  ' , 'rk4s  ']
%yy1 = ['heun',yy1]

r = [yy1 yy2 yy3] % 答案在此