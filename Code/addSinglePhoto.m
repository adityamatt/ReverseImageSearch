clc
FileLink='./testcase/bus1.jpg';
image=imread(FileLink);
name=getName(FileLink);
FolderRoot=getRoot(FileLink);
image=imresize(image,[256,384]);
[num,VecSize]=size(CombinedImageVecData);
Vec190Data=get190Vec(image);
CombinedImageVecData(num+1,:)=Vec190Data;
fileNames(num+1)=cellstr(strcat(FolderRoot,name,'.jpg'));
disp('Image inserted');
clear FileLink image name FolderRoot num VecSize Vec190Data