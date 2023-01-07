close all;
clear,clc;
Tx = 200, Ty = 200;
inImg = 'danganguan.jpg';
% inImg = rgb2gray(imread(inImg));
f = ImgMove(inImg,Tx,Ty);
figure(1),imshow(inImg);
figure(2),imshow(f);