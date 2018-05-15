function [ hsvoutput ] = getHsvData( image )
% returns quantized HSV frequency data of image
%   Detailed explanation goes 
image=double(image);
image=rgb2hsv(image);
hValues=image(:,:,1);
sValues=image(:,:,2);
vValues=image(:,:,3);
QuantizationH=8;
QuantizationS=2;
QuantizationV=2;
hsvoutput=zeros(QuantizationH,QuantizationS,QuantizationV);
[sizeX,sizeY,channel]=size(image);
QuantizedHSV=zeros(sizeX,sizeY,channel);
MaxValueOfH=max(hValues(:));
MaxValueOfS=max(sValues(:));
MaxValueOfV=max(vValues(:));
for i=1:sizeX
    for j=1:sizeY
        QuantizedHSV(i,j,1)=ceil(hValues(i,j)*QuantizationH/MaxValueOfH);
        QuantizedHSV(i,j,2)=ceil(sValues(i,j)*QuantizationS/MaxValueOfS);
        QuantizedHSV(i,j,3)=ceil(vValues(i,j)*QuantizationV/MaxValueOfV);
    end
end
for i=1:sizeX
    for j=1:sizeY
        if (QuantizedHSV(i,j,1)>0 && QuantizedHSV(i,j,2)>0 && QuantizedHSV(i,j,3)>0)
            hsvoutput(QuantizedHSV(i,j,1),QuantizedHSV(i,j,2),QuantizedHSV(i,j,3))=hsvoutput(QuantizedHSV(i,j,1),QuantizedHSV(i,j,2),QuantizedHSV(i,j,3))+1;
        end
    end
end
clear hValues sValues vValues sizeX sizeY QuantizationH QuantizationS QuantizationV QuantizedHSV MaxValueOfH MaxValueOfS MaxValueOfV
hsvoutput = hsvoutput(:)';
hsvoutput = hsvoutput/sum(hsvoutput);
end

