function f = ImDenoise( inImg,deNoiseStyle)

% outImg3 = ImDenoise(inImg,'average')  算术平均滤波
% outImg3 = ImDenoise(inImg,'medan')    中值滤波

I = imread(inImg); %读取图像
[m,n,c] = size(I);  %读取图像的行数、列数和色彩
if(c>1)             %如果是彩色图像，将其转换为黑白图像，方便处理
    I = rgb2gray(I);
end

switch deNoiseStyle
    case 'average'
         h = fspecial('average',[9,9]);  %使用9*9滤波核,方便观察
         f = imfilter(I,h,'replicate');
    case 'medan'
         f = medfilt2(I,[9,9],'symmetric');
    otherwise
         error('Unknown filter type');
end

% 不能用ifelse，会导致维度矩阵不一致
% if deNoiseStyle == 'average'
%     h = fspecial('average',[m,n]);
%     outImg3 = imfilter(I,h,'replicate');
%     
% elseif deNoiseStyle == 'medan'
%         outImg3 = medfilt2(I,[m,n],'symmetric');
% else
%         error('Unknown filter type');
% end
f = uint8(f);
outImg3 = f;
end