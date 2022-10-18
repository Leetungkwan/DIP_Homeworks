close all
clc
clear

% 生成四幅图片的代码
img = 255 * ones(1024,1024);
w = 10;

figure(1)
img1 = img;
for i1 = 1:100:1024
    for j1 = 1:w
        img1(:,i1+j1) = 0;
    end
end
subplot(221);
imshow(img1,[]);
title('竖直密集条纹');

img2 = img;
for i2 = 1:200:1024
    for j2 = 1:w
        img2(:,i2+j2) = 0;
    end
end
subplot(222);
imshow(img2,[]);
title('竖直稀疏条纹');

img3 = img;
for i3 = 1:200:1024
    for j3 = 1:w
        img3(i3+j3,:) = 0;
    end
end
subplot(223);
imshow(img3,[]);
title('平行稀疏条纹');

img4 = img;
for i4 = 128:128:1024
    img(1,i4) = 0;
    for m = 2:i4-1
      img4(m ,i4-m) = 0;  
    end
end
for i5 = 128:128:1024
    img(1024,128) = 0;
    for k = 2:1024-i5
      img4(1024-k ,i5+k) = 0;  
    end
end
subplot(224);
imshow(img4,[]);
title('斜条纹');

% 对第一张图片进行处理
figure(2)
subplot(221);
imshow(img1);
title('原图')

F = fft2(img1);
S = abs(F);
subplot(222);
imshow(S, []);
title('傅里叶频谱')

Fc = fftshift(F);
subplot(223);
imshow(abs(Fc), []);
title('居中的频谱')

S2 = log(1 + abs(Fc));
subplot(224);
imshow(S2, []);
title('使用对数变换进行视觉增强后的频谱')

% 对第二张图片进行处理
figure(3)
subplot(221);
imshow(img2);
title('原图')

F = fft2(img2);
S = abs(F);
subplot(222);
imshow(S, []);
title('傅里叶频谱')

Fc = fftshift(F);
subplot(223);
imshow(abs(Fc), []);
title('居中的频谱')

S2 = log(1 + abs(Fc));
subplot(224);
imshow(S2, []);
title('使用对数变换进行视觉增强后的频谱')

% 对第三张图片进行处理
figure(4)
subplot(221);
imshow(img3);
title('原图')

F = fft2(img3);
S = abs(F);
subplot(222);
imshow(S, []);
title('傅里叶频谱')

Fc = fftshift(F);
subplot(223);
imshow(abs(Fc), []);
title('居中的频谱')

S2 = log(1 + abs(Fc));
subplot(224);
imshow(S2, []);
title('使用对数变换进行视觉增强后的频谱')

% 对第四张图片进行处理
figure(5)
subplot(221);
imshow(img4);
title('原图')

F = fft2(img4);
S = abs(F);
subplot(222);
imshow(S, []);
title('傅里叶频谱')

Fc = fftshift(F);
subplot(223);
imshow(abs(Fc), []);
title('居中的频谱')

S2 = log(1 + abs(Fc));
subplot(224);
imshow(S2, []);
title('使用对数变换进行视觉增强后的频谱')






