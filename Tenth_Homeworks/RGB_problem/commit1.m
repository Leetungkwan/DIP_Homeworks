close all;
clc;
clear;
n = 500;    
black = zeros(n, n);   %先定义一幅100*100的全黑图像
% imshow(black);
black(:,:,1) = 0.5;
black(:,:,2) = 1;
black(:,:,3) = 0.5;
rgb_image=cat(3,black(:,:,1),black(:,:,2),black(:,:,3));
imshow(rgb_image);

%答案很明显，是绿色

