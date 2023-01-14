close all;
clear,clc;
inImg = 'gdut.jpg';
f = SobelSharpen(inImg);
figure(1),imshow(inImg),title('输入图像');
figure(2),imshow(f),title('锐化图像');