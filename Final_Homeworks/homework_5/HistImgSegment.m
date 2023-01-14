function outImg5 = HistImgSegment(inImg)
I = imread(inImg);  %读取图像
[m,n,c] = size(I);
if c>1              % 若为三维图像，则转换成灰度图
    I = rgb2gray(I);
end
% I = double(I);      %将I变为double型，方便matlab处理，其实matlab自动转换，此步可省略
T = graythresh(I);    %确定阈值T
T = 255*T;
for i = 1:m
    for j = 1:n
        if I(i,j)<=T        %小于阈值赋为0
            I(i,j) = 0;
        elseif I(i,j)>T
                I(i,j) = 255;   %大于阈值赋为0
        else
            error('no T correspondence');
        end
    end
end
outImg5 = I;
end
% T = 0.5*(double(min(f(:)))+double(max(f(:))));
% while 1
%     g = f>=T;
%     Tnext = 0.5 * (mean(f(g))+mean(f(~g)));
%     if abs(T-Tnext)<0.5;
%         break;
%     end
%     T =Tnext;
% end
