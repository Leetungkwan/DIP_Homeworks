function outImg4 = SobelSharpen( inImg)
I = imread(inImg);  %读取图像
[m,n,c] = size(I);
if c>1              % 若为三维图像，则转换成灰度图
    I = rgb2gray(I);
end
I = double(I);      %将I变为double型，方便matlab处理，其实matlab自动转换，此步可省略
%定义Sobel算子x，y方向矩阵
sobelx = [-1,0,+1;-2,0,+2;-1,0,+1];
sobely = [+1,+2,+1;0,0,0;-1,-2,-1];
% Sobelx = [-1 -2 -1;0 0 0;1 2 1];
% Sobely = [-1 0 1;-2 0 2;-1 0 1];
f = zeros(m,n);
for i = 2:m-1
    for j = 2:n-1
        temp = I(i-1:i+1,j-1:j+1); %建立一个中间矩阵
        f(i,j) = abs(sum(sum(sobelx*temp))) + abs(sum(sum(sobely*temp))); %计算结果，注意不要用错*号
%         f(i,j) = abs(sum(sum(Sobelx.*temp)))+abs(sum(sum(Sobely.*temp)));
    end
end
outImg4 = I + f;
outImg4 = uint8(outImg4);
end
