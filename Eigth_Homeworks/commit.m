clc
clear
close all;
f1 = imread('Fig0504(a)(gaussian-noise).tif');
subplot(4,3,1), imshow(f1), title('高斯噪声污染图')
subplot(4,3,4), imhist(f1,256), axis tight, title('f1直方图');

f2 = imread('Fig0504(b)(rayleigh-noise).tif');
subplot(4,3,2), imshow(f2), title('瑞利噪声污染图')
subplot(4,3,5), imhist(f2,256), axis tight, title('f2直方图');

f3 = imread('Fig0504(c)(gamma-noise).tif');
subplot(4,3,3), imshow(f3), title('伽马噪声污染图')
subplot(4,3,6), imhist(f3,256), axis tight, title('f3直方图');

f4 = imread('Fig0504(g)(neg-exp-noise).tif');
subplot(4,3,7), imshow(f4), title('指数噪声污染图')
subplot(4,3,10), imhist(f4,256), axis tight, title('f4直方图');

f5 = imread('Fig0504(h)(uniform-noise).tif');
subplot(4,3,8), imshow(f5), title('均匀噪声污染图')
subplot(4,3,11), imhist(f5,256), axis tight, title('f5直方图');

f6 = imread('Fig0504(i)(salt-pepper-noise).tif');
subplot(4,3,9), imshow(f6), title('椒盐噪声污染图')
subplot(4,3,12), imhist(f6,256), axis tight, title('f6直方图');
