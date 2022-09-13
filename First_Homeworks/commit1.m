%% first test

a = sin(60*pi...
    /180)
% format long
% b = sin(60*pi/180)
format short e 

%% second test
a = 10*2;b = a+5,c = a*b;d = c+a
% A = [1 2 3 ;4 5 6;7 8 9]
A = [1 2 ;4 5 ]
B = [1,2 3
     4,5,6
     7,8,9]
C = [1;2;3]

length(A) % length函数计算得矩阵的列数

[m, n] = size(B)


%% third test

% t = (0:0.1:1);
% t = linspace (0,1,11);
% t = logspace (0,1,11)

A = [1 2] 
A.^2

a=[1 0];
b=[0 1];
a&b



%% fourth test

% y=[1 2 3 2 1]; 
% plot(y) 


t=(0:0.05:1);
y=sin(2*pi*t);
% stem(t,y)
% bar(t,y)
% stairs (t,y,'r')

t1=(0.5:0.05:1.5);
y1=2*sin(2*pi*2*t1);
plot(t,y,'k',t1,y1,'r'); 

% yl = (1:100);
% figure
% semilogy(yl);
% 
% x=(0:pi/100:2*pi);
% yp=abs(sin(x));
% figure
% polar(x,yp) 



%% fifth test
% 
% x = 0:pi/10:5*pi;
% y = sin(x);
% z = cos(x);
% % subplot(2,1,1);
% plot3(x,y,z);
% 
% figure;
% subplot(2,1,1);
% z=eye(10);
% mesh(z);
% subplot(2,1,2)
% z=peaks(20); %高斯分布函数
% mesh(z);

% 
% x=-8:0.5:8;y=x';
% % X=ones(size(y))*x; 
% % Y=y*ones(size(x));
% [X,Y]=meshgrid(-8:0.5:8,-8:0.5,8);
% R=sqrt(X.*X+Y.*Y); 
% z=sin(R)./R;
% % axis([0,40,0,40]);
% mesh(z)

% [x,y,z]=peaks(30);
% subplot(1,2,1);
% mesh(x,y,z);
% subplot(1,2,2);
% surf(x,y,z);

%  [x,y,z]=peaks(30);
% subplot(1,2,1);
% mesh(x,y,z);
% subplot(1,2,2);
% surf(x,y,z);
% colorbar 


axis equal
M = moviein(16);
       for  j = 1:16
             plot ( fft (eye(j+16)));
             M (: , j) = getframe;
       end
movie ( M )



%%
clc;
clear all;
fs=8000;
t=(0:1/fs:0.2);
y=dtones(t,697,1209);  %键1对应的两个频率
plot(t,y);
%audioplay(y, fs); 


%函数
% function fy=dtones(t,f1,f2)
% fy=sin(2*pi*f1*t)+sin(2*pi*f2*t);
% end



%%
% x=input('Input x please: ');
% y=input('Input y please: ');
% z=x;
% x=y;
% y=z;
% disp(x);
% disp(y);


% x=menu('波形','正弦','余弦','正切','余切');
% switch x
% case 1
%     ezplot('sin')
% case 2
%     ezplot('cos')
% case 3
%     ezplot('tan')
% case 4
%     ezplot('cot')
% end 

% sum = 0;
% ave = 0;
% count = 0;
% 
% x = input('input number: ')
% while(x ~= 0)
%     sum = sum + x;
%     count = count + 1;
%     x = input('input number:')
% end
% 
% if(count > 0)
%     ave = sum/count;
%     
% end
% 
% display(sum)
% display(ave)
% 


for j = 1:500 ;   
    sum = 0;
    for i = 1 : j/2;
        if rem(j,i) == 0;
           sum = sum + i;
           if j == sum;
               display(j)
           end
        end
    end
end



