f  = @(x) exp(2*x).*sin(3*x) ; 
df = @(x) 2*exp(2*x)*sin(3*x) + exp(2*x)*3*cos(3*x) ;

% 左邊界
a = 0;
% 右邊界
b = 2;
% 分割單位
h = 0.0003 ; 

nt = 0;
for i = a:h:b
nt = nt+1;
% Q：用 3 5點差分法，與正解的比較
df3 = ( -3*f(i) + 4*f(i+h) - f(i+2*h) ) / (2*h) ;
df5 = ( -25*f(i) + 48*f(i+h) - 36*f(i+2*h) + 16*f(i+3*h) - 3*f(i+4*h) ) / (12*h) ;
df_exact = df(i) ;

df3_out = df_exact - df3;
df5_out = df_exact - df5;

A = [ df_exact df3 df3_out df5 df5_out]';
y1(nt) = df3_out;
y2(nt) = df5_out;
ii(nt) = nt; 
end
ii = ii' ; 
% [ii y1 y2]

% 當 h=0.0003 時，誤差被壓在10^(-4)次方內 
f1 = figure();
plot(ii, y1, 'r')

% 當 h=0.0003 時，誤差被壓在10^(-4)次方內 
% ps 其實 h=0.001 時就可以了
f2 = figure();
plot(ii, y2, 'b')


