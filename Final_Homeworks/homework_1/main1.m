close all;
clear, clc;
fa = 5; fb = 30;
fc = 80; fd = 100;
inImg = 'danganguan.png';
f = GrayTrans(inImg,fa,fb,fc,fd);
figure(1),imshow(inImg),title('输入图像');
figure(2),imshow(f),title('增强后图像');

