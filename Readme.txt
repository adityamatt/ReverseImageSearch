Name: Aditya Tiwari
Entry: 2016csb1029
############################
Get dataset
wang.ist.psu.edu/~jwang/test1.tar
and extract it and name it images and paste it in root folder of code.
############################
Platform used to make the code: Matlab R2015b
To createDataSet
    Place the images in folder images,with numerical names.
    Run CreateDataSet.m
To add a single photo to the existing database
    Use addSinglePhoto.m 
    Change the FileLink in Line 2 to required photo(must have numerical Name).
To Query Image
    Use Interface.m
    I have provided the trained DataSet.mat,you may load that directly or run CreateDataSet.m
    Change the variable in Line 2 to required photo.
    Run the code.
