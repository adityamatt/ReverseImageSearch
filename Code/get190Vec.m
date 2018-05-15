function [ Vec190Output ] = get190Vec( image )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
   image = imresize(image,[256 384]);
   Hsv32Vec=getHsvData(image);                               %32
   Correlogram64Vec=colorAutoCorrelogram(image);             %64
   Moments6Vec=getMoments(image);                            %6
   img = double(rgb2gray(image))/255;
   [meanAmplitude, msEnergy] = gaborWavelet(img, 4, 6);
   waveletTransformation40Vec=waveletTransformation(image);  %40
   Vec190Output=[Hsv32Vec,Correlogram64Vec,Moments6Vec,meanAmplitude,msEnergy,waveletTransformation40Vec];
end

