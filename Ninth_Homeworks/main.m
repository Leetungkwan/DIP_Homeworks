close all;
clc;
clear;
f = imread('Fig0459(a)(orig_chest_xray).tif');
subplot(221), imshow(f);
PQ = paddedsize(size(f));
D0 = 0.05 * PQ(1);
HBW = hpfilter('btw', PQ(1), PQ(2), D0, 2);
H = 0.5 + 2*HBW;
gbw = dftfilt(f, HBW);
gbw = gscale(gbw);
subplot(222), imshow(gbw);
ghf = dftfilt(f,H);
ghf = gscale(ghf);
subplot(223), imshow(ghf);
ghe = histeq(ghf,256);
subplot(224), imshow(ghe);