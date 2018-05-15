clc
queryImage='./testcase/rose3.jpg';
inputImage=imread(queryImage);
inputImage=imresize(inputImage,[256,384]);
input190vec=get190Vec(inputImage);
n=3;       %number of images to be returned
for i=1:n
    output(i)=-1;
    current(i)=9999999999;
end

nfiles=size(CombinedImageVecData,1);
for i=1:nfiles
    Current190Vec=CombinedImageVecData(i,1:190);
    Diff=Current190Vec-input190vec;
    value=sqrt(Diff*Diff');
    for j=1:n
        if (current(j)>value)
            current(j)=value;
            output(j)=i;
            break;
        end
    end
    
end
for i=1:n-1
    for j=i+1:n
        if (current(i)>current(j))
            currentmp=current(j);
            current(i)=current(j);
            current(j)=currenttmp;
            outputtmp=output(j);
            output(i)=output(j);
            output(j)=outputtmp;
        end
    end
end
images=cell(1,10);
for i=1:n
%     image(i)=imread(fileNames(output));
imageName=fileNames{output(i)};
images{1,i}=imread(imageName);
end
 figure;
 h    = [];
 for i=1:n
     h(i)=subplot(2,2,i);
 end
 h(n+1)=subplot(2,2,n+1);
 for i=1:n
      image(images{1,i},'Parent',h(i));
      axis image;
 end
image(inputImage,'Parent',h(n+1));
text(100,256,'Query Image','Color','red','FontSize',14)
axis image;
clear queryImage nfiles imageName i j h currenttmp outputtmp images n  Diff value inputImage input190vec folderLocation;
% foundImage=imread(fileNames(output));
% figure;imshow(inputImage);
% figure;imshow(foundImage);