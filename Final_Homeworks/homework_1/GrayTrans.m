function outImg1 = GrayTrans( inImg,fa,fb,fc,fd)
I = imread(inImg); %读取图像
[m,n,c] = size(I);  %读取图像的行数、列数和色彩
if(c>1)             %如果是彩色图像，将其转换为黑白图像，方便处理
    I = rgb2gray(I);
end
f = zeros(m,n);
I = double(I);  %将I数据转换成double类型,方便后续处理
k1 = fc/fa;     %计算比例系数k1,k2,k3
k2 = (fd-fc)/(fb-fa);
k3 = (255-fd)/(255-fb);
for i=1:m
    for j=1:n
        if I(i,j)<fa
            f(i,j) = k1*I(i,j);
        elseif I(i,j)<fb
            f(i,j) = k2*(I(i,j)-fa)+fc;
        else
            f(i,j) = k3*(I(i,j)-fb)+fd;
        end
    end
end
f = uint8(f);  %转换uint8编码
outImg1 = f;   %将O赋回给outImg，继而输出
end
