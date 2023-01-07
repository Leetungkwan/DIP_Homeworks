close all;
clc;
clear;
f = imread('Fig0910(a)(shapes).tif');
figure
subplot(221), imshow(f)
se = strel('square',20);
fo = imopen(f,se);
subplot(222), imshow(fo);
fc = imclose(f,se);
subplot(223), imshow(fc);
foc = imclose(fo,se);
subplot(224), imshow(foc);