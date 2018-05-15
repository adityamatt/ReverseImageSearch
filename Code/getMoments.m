function [ MomentVectorRGB ] = getMoments( image )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
image = double(image);
MomentVectorRGB=[0 0 0 0 0 0];
r=image(:,:,1);
g=image(:,:,2);
b=image(:,:,3);
r1D=r(:);
g1D=g(:);
b1D=b(:);
rMean=mean(r1D);
gMean=mean(g1D);
bMean=mean(b1D);
MomentVectorRGB(1)=rMean;
MomentVectorRGB(2)=gMean;
MomentVectorRGB(3)=bMean;
MomentVectorRGB(4)=std(r1D);
MomentVectorRGB(5)=std(g1D);
MomentVectorRGB(6)=std(b1D);
clear r g b r1D g1D b1D rMean gMean bMean;
end

