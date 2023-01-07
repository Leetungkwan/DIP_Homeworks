close all;
clc;
clear;

pyramid_matrix = [11 12 13 14;
                  15 16 17 18;
                  19 20 21 22; 
                  23 24 25 26;]

x = 1:5;
p = 2;
y = zeros(length(x)*p - p + 1, 1);
y(1:p:length(x)*p) = x;

%%
clear all
close all
% read image
rgb = imread('Fig0222(a)(face).tif')
rgb = im2double(rgb)
figure
subplot(211)
imshow(rgb,[]);title('原图')
% cast to double
rgb = double(rgb);
% mosaic pattern
% G R …
% B G …
% : :
pattern = 'grbg';
% demosaicking
sigma = 1.4;
rgb_dem = demosaick(rgb, pattern, sigma);
% save image
imwrite(uint8(rgb_dem), 'lena_MLRI.tiff');
% show image

subplot(212)
imshow(rgb_dem/255);title('插值图')
% calculate PSNR and CPSNR
psnr = impsnr(rgb, rgb_dem, 255, 10);
cpsnr = imcpsnr(rgb, rgb_dem, 255, 10);
