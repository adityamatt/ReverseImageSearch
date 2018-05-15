clc;
clear

%  CompleteServerDataSetobj = CompleteServerDataSet('./DataSet/');
folderLocation='./images/*.jpg';
%inputGiven=imread(folderLocation);
FolderRoot=getRoot(folderLocation);
imagefiles = dir(folderLocation);      
nfiles = length(imagefiles);  
CombinedImageVecData=zeros(nfiles,190);
for i=1:nfiles
   currentfilename = imagefiles(i).name;
   currentimage = imread(strcat(FolderRoot,currentfilename));
   CombinedImageVecData(i,:)=get190Vec(currentimage);
   fileNames(i)=cellstr(strcat(FolderRoot,currentfilename));
end
clear i FolderRoot folderLocation currentfilename currentimage Hsv32Vec Correlogram64Vec Moments6Vec Gabor48Vec waveletTransformation40Vec nfiles FolderRoot imagefiles;
save('Bigdataset');