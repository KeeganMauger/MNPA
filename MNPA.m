clear all
close all
clc

% DC Case
global G b C
nodes = 6;
G = sparse(nodes,nodes);
C = sparse(nodes,nodes);
b = sparse(nodes,1);

% MNA setup
Vin = 1;
R1 = 1;
R2 = 2;
R3 = 10;
R4 = 0.1;
R5 = 1000;
C1 = 0.25;
L1 = 0.2;
alpha = 100;

res(1,2,R1);
res(2,0,R2);
res(3,6,R3);
xr = vol(6,0,0)
res(4,5,R4);
res(5,0,R5);
cap(1,2,C1);
vol(1,0,Vin);
ind(2,3,L1);
vcvs(4,0,xr,0,-alpha);

w = 0;
s = j*w;

A = G + s*C;
A0 = full(A);


V0 = linspace(-10,10,21);
b0 = sparse((width(G)),width(V0));
for i = 1:width(V0)
    b0(7,i) = V0(i);
end

% x = (G + s*C) \ b;
x = sparse((width(G)),width(V0));

for j = 1:width(V0)
    x(:,j) = (G + s*C) \ b0(:,j);
end
    
figure(1)
plot(V0,x(5,:))
hold on
plot(V0,x(3,:))
grid on
saveas(gcf,'Figure1')

% AC Case
% global G b C
% nodes = 5;
% G = sparse(nodes,nodes);
% C = sparse(nodes,nodes);
% b = sparse(nodes,1);
% 
% % MNA setup
% Vin = 1;
% R1 = 1;
% R2 = 2;
% R3 = 10;
% R4 = 0.1;
% R5 = 1000;
% C1 = 0.25;
% L1 = 0.2;
% alpha = 100;
% 
% res(1,2,R1);
% res(2,0,R2);
% res(3,0,R3);
% res(4,5,R4);
% res(5,0,R5);
% cap(1,2,C1);
% vol(1,0,Vin);
% ind(2,3,L1);
% ccvs(4,0,3,0,alpha);
% 
% w = pi;
% s = j*w;
% 
% A = G + s*C;
% A0 = full(A);
% 
% V0 = linspace(-10,10,21);
% b0 = sparse((width(G)),width(V0));
% for i = 1:width(V0)
%     b0(6,i) = V0(i);
% end
% 
% % x = (G + s*C) \ b;
% x = sparse((width(G)),width(V0));
% 
% for j = 1:width(V0)
%     x(:,j) = (G + s*C) \ b0(:,j);
% end
%     
% figure(2)
% plot(V0,x(5,:))
% grid on
% saveas(gcf,'Figure2')




    
