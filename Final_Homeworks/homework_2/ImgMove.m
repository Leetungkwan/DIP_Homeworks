function outImg2 = ImgMove(inImg,Tx,Ty)
I = imread(inImg);  %读取图像
[m,n,c] = size(I);
if c>1              % 若为三维图像，则转换成灰度图
    I = rgb2gray(I);
end
I = double(I);      %将I变为double型，方便matlab处理，其实matlab自动转换，此步可省略
f = zeros(m+Tx,n+Ty); %创建一个0矩阵，为保证原图平移不失真，扩宽矩阵
for i = 1:m
    for j = 1:n
        f(i+Tx,j+Ty) = I(i,j);
    end
end

% 将边框变为白色，便于观察
for i = 1:Tx
    for j = 1:n+Ty
        f(i,j) = 255;
    end
end
for i = 1:m+Tx
    for j = 1:Ty
        f(i,j) = 255;
    end
end
f = uint8(f);  % 将double型的O转换成uint8型
outImg2 = f;
end