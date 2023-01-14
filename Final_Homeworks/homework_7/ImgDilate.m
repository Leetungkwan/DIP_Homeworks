function outImg7 = ImgDilate ( inImg,Template) 
% outImg7 = ImgErose(inImg,'diamond')     平坦的菱形结构图像膨胀
% outImg7 = ImgErose(inImg,'disk')        平坦的圆盘形结构图像膨胀
% outImg7 = ImgErose(inImg,'octagon')     平坦的八边形结构图像膨胀

I = imread(inImg);  %读取图像
[m,n,c] = size(I);
if c>1              % 若为三维图像，则转换成灰度图
    I = rgb2gray(I);
end
I = double(I);      %将I变为double型，方便matlab处理，其实matlab自动转换，此步可省略
switch Template
    case 'diamond'
        se = strel('diamond',5);
        f = imdilate(I,se);
    case 'disk'
        se = strel('disk',5);
        f = imdilate(I,se);
    case 'octagon'
        se = strel('octagon',3);
        f = imdilate(I,se);
    otherwise
        error('no structure type');
end
outImg7 = f;
end