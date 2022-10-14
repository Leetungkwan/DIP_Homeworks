% 例3-9
clc
clear
f = imread('Fig0338(a)(blurry_moon).tif');
subplot(221);
imshow(f);

w = fspecial('laplacian', 0);

g1 = imfilter(f, w,'replicate');
subplot(222);
imshow(g1,[ ]);

f2 = im2double(f);
g2 = imfilter(f2, w, 'replicate');
subplot(223);
imshow(g2,[ ]);

g = f2 - g2;
subplot(224);
imshow(g,[ ]);