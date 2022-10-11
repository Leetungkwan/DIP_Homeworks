clc
clear
I = imread('moon.tif');
figure(1);
subplot(2,3,1);imshow(I);
subplot(2,3,2); imhist(I);
h = imhist(I);
subplot(2,3,3); 
h1 = h(1:10:256); horz = 1:10:256;
bar(horz, h1)
subplot(2,3,4);
stem(horz, h1, 'fill');
subplot(2,3,5);
plot(h);

G = imread('pollen.tif');
figure(2);
subplot(2,3,1);imshow(G);
subplot(2,3,2);imhist(G);
h = imhist(G);
subplot(2,3,3);
bar(horz, h1)
subplot(2,3,4);
stem(horz, h1, 'fill');
subplot(2,3,5);
plot(h);





