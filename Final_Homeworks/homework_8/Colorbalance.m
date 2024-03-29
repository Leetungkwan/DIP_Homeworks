function outImg8 = Colorbalance ( inImg) 
I = imread(inImg);  %读取图像
%提取rgb分量
Ir = I(:,:,1);
Ig = I(:,:,2);
Ib = I(:,:,3);
%色彩平衡的方法有很多，这里选择最简单的直方图均衡化
I1 = histeq(Ir);
I2 = histeq(Ig);
I3 = histeq(Ib);
%合成图片
f = cat(3,I1,I2,I3);
%将f赋予输出量
outImg8 = f;
figure(1),imshow(I),title('输入图像');
figure(2),
subplot(131),imhist(Ir);subplot(132),imhist(Ig);subplot(133),imhist(Ib),title('原图rgb直方图');
figure(3),imshow(outImg8),title('均衡化后的图片');
figure(4),
subplot(131),imhist(I1);subplot(132),imhist(I2);subplot(133),imhist(I3),title('均衡化后的rgb直方图');
end
