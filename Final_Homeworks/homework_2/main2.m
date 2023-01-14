close all;
clear,clc;
Tx = 200, Ty = 200;
inImg = 'danganguan.jpg';
% inImg = rgb2gray(imread(inImg));
f = ImgMove(inImg,Tx,Ty);
figure(1),imshow(inImg),title('输入图像');
figure(2),imshow(f),title('完整（无失真）平移后图像');