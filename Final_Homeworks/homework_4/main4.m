close all;
clear,clc;
inImg = 'gdut.jpg';
f = SobelSharpen(inImg);
figure(1),imshow(inImg);
figure(2),imshow(f);