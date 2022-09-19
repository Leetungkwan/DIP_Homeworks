clc;
clear all;
%{
    尽管在网上下载的是黑白图片，但读入MATLAB后仍是三维矩阵（RGB图片），所以需要降维处理，
    使其成为二维矩阵（同时为了更好的观察）
%}

origin_picture=imread('feng.jpg');
figure(1);
imshow(origin_picture);
title('原始RGB图像')

%把图像转换成灰度图像
GrayPic = rgb2gray(origin_picture); %用rgb2gray函数把RGB图像转化成灰度图像
figure(2)
imshow(GrayPic);
title('RGB图像转化为灰度图像')

index_1 = GrayPic(:,216); %第一行
index_2 = GrayPic(:,432); %第二行
index_3 = GrayPic(:,648); %第三行
index_4 = GrayPic(148,:); %第一列
index_5 = GrayPic(296,:); %第二列

 %将三行灰度矩阵合并成一个矩阵
array1 = [index_1 index_2 index_3];

%将两列灰度矩阵合并成一个矩阵(先转置矩阵)
array2= [index_4' index_5'];

figure(3) %定义一个图来画灰度曲线
for i = 1: 3
    plot(array1(:,i));
    hold on;
end

for j = 1: 2
    plot(array2(:,j));
    hold on;
end

legend('第一行', '第二行', '第三行', '第一列', '第二列');





