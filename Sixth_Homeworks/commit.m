%%
close all;clear all;clc;

% 设置光栅
r = 300 ;c = r ;
d = 10;
a = 6;
U1  = zeros(c , r);
for i = 1 : 1  : a
    for j = 0 : 1 : ( c / d -1)
        U1(i + j * d , : ) = 1;
    end
end
figure(1), subplot(131), imshow (U1);

f = imread('Fig0222(a)(face).tif'); % 读入图片
subplot(132), imshow(f),title('orignal lena');
% F = fft2(f);
% Fc = fftshift(F);
% subplot(222), imshow(abs(Fc),[]);

f = im2double(f); % 转换格式
I = f .* U1;     % 光栅图片叠加
subplot(133), imshow(I), title('orignal lena-add');

% F_add = fft2(f_add);
% Fc_add = fftshift(F_add);
% subplot(224),imshow(abs(Fc_add),[]);


%%
M = 2*size(I,1);  %滤波器行数
N = 2*size(I,2);  %滤波器列数
u = -M/2:(M/2-1);
v = -N/2:(M/2-1);
[U,V] = meshgrid(u,v);
D = sqrt(U.^2+V.^2);
D0 = 35;  %截止频率
n = 10; %滤波器的阶数
H = 1./(1+(D./D0).^(2*n)); %巴特沃斯滤波器
J = fftshift(fft2(I,size(H,1),size(H,2))); %时域图像转换到频域
K=J.*H;  %滤波处理
L = ifft2(ifftshift(K)); %傅里叶反变换
L = L(1:size(I,1),1:size(I,2));
figure(2);
subplot(121), imshow(I,[]);
title('orignal image');
subplot(122), imshow(abs(J),[]);
title('orignal image-fourier');

figure(3);
subplot(121), imshow(L,[]);
title('process image');
subplot(122), imshow(abs(K),[]);
title('process image-fourier');











