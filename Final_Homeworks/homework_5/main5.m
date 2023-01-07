close all;
clear,clc;
inImg = 'gdut.jpg';
f = HistImgSegment(inImg);
figure(1),imshow(inImg);
figure(2),imshow(f);
% I = rgb2gray(imread(inImg));
% T = graythresh(I);
% T = 255 * T;
% imhist(I)