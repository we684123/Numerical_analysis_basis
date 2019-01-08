f  = @(x) exp(2*x).*sin(3*x) ; 
df = @(x) 2*exp(2*x)*sin(3*x) + exp(2*x)*3*cos(3*x) ;

% �����
a = 0;
% �k���
b = 2;
% ���γ��
h = 0.0003 ; 

nt = 0;
for i = a:h:b
nt = nt+1;
% Q�G�� 3 5�I�t���k�A�P���Ѫ����
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

% �� h=0.0003 �ɡA�~�t�Q���b10^(-4)���褺 
f1 = figure();
plot(ii, y1, 'r')

% �� h=0.0003 �ɡA�~�t�Q���b10^(-4)���褺 
% ps ��� h=0.001 �ɴN�i�H�F
f2 = figure();
plot(ii, y2, 'b')


