close all;
clear, clc;
fa = 5; fb = 30;
fc = 80; fd = 100;
inImg = 'danganguan.png';
f = GrayTrans(inImg,fa,fb,fc,fd);
figure(1),imshow(inImg);
figure(2),imshow(f);

