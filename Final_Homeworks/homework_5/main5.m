close all;
clear,clc;
inImg = 'gdut.jpg';
f = HistImgSegment(inImg);
figure(1),imshow(inImg),title('输入图像');
figure(2),imshow(f),title('二值化图像');
% I = rgb2gray(imread(inImg));
% T = graythresh(I);
% T = 255 * T;
% imhist(I)