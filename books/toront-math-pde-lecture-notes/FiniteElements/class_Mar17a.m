N = 10;
x1 = 0:1/N:1;
X1 = 0:1/(10*N):1;
u = linear_elements(@f,x1);
phi = linear_building_blocks(x1,X1);
figure(1)
clf
for j=1:N
  plot(X1,phi(j,:),'LineWidth',2);
  hold on
end
figure(1)

U1 = u(2:N+1)*phi;
U = -X1.^6/30 + X1/5;
figure(2)
clf
plot(x1,u,'-o')
hold on
plot(X1,U1,'x')
figure(2)

err1 = U1-U;
figure(3)
clf
plot(X1,abs(err1),'LineWidth',2);
figure(3)

figure(4)
clf
plot(X1,log10(abs(err1)),'LineWidth',2);
figure(4)

N = 2*N;
x2 = 0:1/N:1;
X2 = 0:1/(10*N):1;
u = linear_elements(@f,x2);
phi = linear_building_blocks(x2,X2);
U2 = u(2:N+1)*phi;
U = -X2.^6/30 + X2/5;
err2 = U2-U;

N = 2*N;
x3 = 0:1/N:1;
X3 = 0:1/(10*N):1;
u = linear_elements(@f,x3);
phi = linear_building_blocks(x3,X3);
U3 = u(2:N+1)*phi;
U = -X3.^6/30 + X3/5;
err3 = U3-U;

N = 2*N;
x4 = 0:1/N:1;
X4 = 0:1/(10*N):1;
u = linear_elements(@f,x4);
phi = linear_building_blocks(x4,X4);
U4 = u(2:N+1)*phi;
U = -X4.^6/30 + X4/5;
err4 = U4-U;

N = 2*N;
x5 = 0:1/N:1;
X5 = 0:1/(10*N):1;
u = linear_elements(@f,x5);
phi = linear_building_blocks(x5,X5);
U5 = u(2:N+1)*phi;
U = -X5.^6/30 + X5/5;
err5 = U5-U;

N = 2*N;
x6 = 0:1/N:1;
X6 = 0:1/(10*N):1;
u = linear_elements(@f,x6);
phi = linear_building_blocks(x6,X6);
U6 = u(2:N+1)*phi;
U = -X6.^6/30 + X6/5;
err6 = U6-U;

N = 2*N;
x7 = 0:1/N:1;
X7 = 0:1/(10*N):1;
u = linear_elements(@f,x7);
phi = linear_building_blocks(x7,X7);
U7 = u(2:N+1)*phi;
U = -X7.^6/30 + X7/5;
err7 = U7-U;


figure(1)
clf
plot(X1,U1);
hold on
plot(X2,U2);
plot(X3,U3);
plot(X4,U4);
plot(X5,U5);
plot(X6,U6);
plot(X7,U7);
plot(X7,U,'r')
figure(1)

format short e
format compact
display('L^infty errors')
max(abs(err1))
max(abs(err2))
max(abs(err3))
max(abs(err4))
max(abs(err5))
max(abs(err6))
max(abs(err7))
display(' ')
display('ratios of L^infty errors')
max(abs(err1))/max(abs(err2))
max(abs(err2))/max(abs(err3))
max(abs(err3))/max(abs(err4))
max(abs(err4))/max(abs(err5))
max(abs(err5))/max(abs(err6))
max(abs(err6))/max(abs(err7))
display(' ')

display('L^2 errors')
sqrt((X1(2)-X1(1))*sum(err1.^2))
sqrt((X2(2)-X2(1))*sum(err2.^2))
sqrt((X3(2)-X3(1))*sum(err3.^2))
sqrt((X4(2)-X4(1))*sum(err4.^2))
sqrt((X5(2)-X5(1))*sum(err5.^2))
sqrt((X6(2)-X6(1))*sum(err6.^2))
sqrt((X7(2)-X7(1))*sum(err7.^2))
display(' ')
display('ratios of L^2 errors')
sqrt((X1(2)-X1(1))*sum(err1.^2))/sqrt((X2(2)-X2(1))*sum(err2.^2))
sqrt((X2(2)-X2(1))*sum(err2.^2))/sqrt((X3(2)-X3(1))*sum(err3.^2))
sqrt((X3(2)-X3(1))*sum(err3.^2))/sqrt((X4(2)-X4(1))*sum(err4.^2))
sqrt((X4(2)-X4(1))*sum(err4.^2))/sqrt((X5(2)-X5(1))*sum(err5.^2))
sqrt((X5(2)-X5(1))*sum(err5.^2))/sqrt((X6(2)-X6(1))*sum(err6.^2))
sqrt((X6(2)-X6(1))*sum(err6.^2))/sqrt((X7(2)-X7(1))*sum(err7.^2))
display(' ')





