%%
clc
clear all;
g = imread('FigP0501(filtering).tif');
f1 = spfilt(g,'hmean',3,3);
figure(1)
subplot(121),imshow(g),title('原图');
subplot(122),imshow(f1),title('谐波平均（3×3）');

f2 = spfilt(g,'hmean',7,7);
figure(2)
subplot(121),imshow(g),title('原图');
subplot(122),imshow(f2),title('谐波平均（7×7）');

f3 = spfilt(g,'hmean',9,9);
figure(3)
subplot(121),imshow(g),title('原图');
subplot(122),imshow(f3),title('谐波平均（9×9）');


%%
clc
clear all;
g = imread('FigP0501(filtering).tif');
f1 = spfilt(g,'max',3,3);
figure(1)
subplot(121),imshow(g),title('原图');
subplot(122),imshow(f1),title('最大值滤波（3×3）');

f2 = spfilt(g,'max',7,7);
figure(2)
subplot(121),imshow(g),title('原图');
subplot(122),imshow(f2),title('最大值滤波（7×7）');

f3 = spfilt(g,'max',9,9);
figure(3)
subplot(121),imshow(g),title('原图');
subplot(122),imshow(f3),title('最大值滤波（9×9）');


%%
clc
clear all;
g = imread('FigP0501(filtering).tif');
f1 = spfilt(g,'midpoint',3,3);
figure(1)
subplot(121),imshow(g),title('原图');
subplot(122),imshow(f1),title('中点滤波（3×3）');

f2 = spfilt(g,'midpoint',7,7);
figure(2)
subplot(121),imshow(g),title('原图');
subplot(122),imshow(f2),title('中点滤波（7×7）');

f3 = spfilt(g,'midpoint',9,9);
figure(3)
subplot(121),imshow(g),title('原图');
subplot(122),imshow(f3),title('中点滤波（9×9）');


