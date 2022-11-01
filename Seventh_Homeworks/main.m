close all;
clc
clear
% 理想低通滤波器处理结果
f = imread('Fig0441(a)(characters_test_pattern).tif');
PQ = paddedsize(size(f));
Hi1 = lpfilter('ideal', PQ(1), PQ(2), 5);
Hi2 = lpfilter('ideal', PQ(1), PQ(2), 30);
Hi3 = lpfilter('ideal', PQ(1), PQ(2), 60);
Hi4 = lpfilter('ideal', PQ(1), PQ(2), 160);
Hi5 = lpfilter('ideal', PQ(1), PQ(2), 460);
gi1 = dftfilt(f,Hi1);
gi2 = dftfilt(f,Hi2);
gi3 = dftfilt(f,Hi3);
gi4 = dftfilt(f,Hi4);
gi5 = dftfilt(f,Hi5);
% figure(1)
% subplot(231),imshow(Hi1);
% subplot(232), imshow(fftshift(Hi1),[]);
% subplot(233), imshow(fftshift(Hi2),[]);
% subplot(234), imshow(fftshift(Hi3),[]);
% subplot(235), imshow(fftshift(Hi4),[]);
% subplot(236), imshow(fftshift(Hi5),[]);
figure(1)
subplot(231),imshow(f);
subplot(232), imshow(gi1,[]);
subplot(233), imshow(gi2,[]);
subplot(234), imshow(gi3,[]);
subplot(235), imshow(gi4,[]);
subplot(236), imshow(gi5,[]);
sgtitle('理想低通滤波器处理结果');


% 高斯低通滤波器处理结果
Hg1 = lpfilter('gaussian', PQ(1), PQ(2), 5);
Hg2 = lpfilter('gaussian', PQ(1), PQ(2), 30);
Hg3 = lpfilter('gaussian', PQ(1), PQ(2), 60);
Hg4 = lpfilter('gaussian', PQ(1), PQ(2), 160);
Hg5 = lpfilter('gaussian', PQ(1), PQ(2), 460);
gg1 = dftfilt(f,Hg1);
gg2 = dftfilt(f,Hg2);
gg3 = dftfilt(f,Hg3);
gg4 = dftfilt(f,Hg4);
gg5 = dftfilt(f,Hg5);
% figure(1)
% subplot(231),imshow(Hg1);
% subplot(232), imshow(fftshift(Hg1),[]);
% subplot(233), imshow(fftshift(Hg2),[]);
% subplot(234), imshow(fftshift(Hg3),[]);
% subplot(235), imshow(fftshift(Hg4),[]);
% subplot(236), imshow(fftshift(Hg5),[]);
figure(2)
subplot(231),imshow(f);
subplot(232), imshow(gg1,[]);
subplot(233), imshow(gg2,[]);
subplot(234), imshow(gg3,[]);
subplot(235), imshow(gg4,[]);
subplot(236), imshow(gg5,[]);
sgtitle('高斯低通滤波器处理结果');


% 巴特沃斯低通滤波器处理结果
Hb1 = lpfilter('btw', PQ(1), PQ(2), 5, 2.5);
Hb2 = lpfilter('btw', PQ(1), PQ(2), 30, 2.5);
Hb3 = lpfilter('btw', PQ(1), PQ(2), 60, 2.5);
Hb4 = lpfilter('btw', PQ(1), PQ(2), 160, 2.5);
Hb5 = lpfilter('btw', PQ(1), PQ(2), 460, 2.5);
gb1 = dftfilt(f,Hb1);
gb2 = dftfilt(f,Hb2);
gb3 = dftfilt(f,Hb3);
gb4 = dftfilt(f,Hb4);
gb5 = dftfilt(f,Hb5);
% figure(3)
% subplot(231),imshow(Hb1);
% subplot(232), imshow(fftshift(Hb1),[]);
% subplot(233), imshow(fftshift(Hb2),[]);
% subplot(234), imshow(fftshift(Hb3),[]);
% subplot(235), imshow(fftshift(Hb4),[]);
% subplot(236), imshow(fftshift(Hb5),[]);
figure(3)
subplot(231),imshow(f);
subplot(232), imshow(gb1,[]);
subplot(233), imshow(gb2,[]);
subplot(234), imshow(gb3,[]);
subplot(235), imshow(gb4,[]);
subplot(236), imshow(gb5,[]);
sgtitle('巴特沃斯低通滤波器处理结果');






