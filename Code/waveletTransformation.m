function [ vec40 ] = waveletTransformation( image )
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
[m ,n, channels]=size(image);
if (n==1)
    imgGray = imresize(image, [256 256]);
else
    imgGray = double(rgb2gray(image))/255;
    imgGray = imresize(imgGray, [256 256]);
end
level1Decomposed = dwt2(imgGray', 'coif1');
level2Decomposed = dwt2(level1Decomposed, 'coif1');
level3Decomposed = dwt2(level2Decomposed, 'coif1');
finalDecomposed = dwt2(level3Decomposed, 'coif1');

meanArrayofFinal = mean(finalDecomposed);
StdArrayofFinal = std(finalDecomposed);
vec40=[meanArrayofFinal StdArrayofFinal];
end

