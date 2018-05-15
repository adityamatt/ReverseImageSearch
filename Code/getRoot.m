function [ root ] = getRoot( location )
    [~, len]=size(location);
    while (len>0 && location(len)~='/')
        len=len-1;
    end
    root='';
    for i=1:len
        root(i)=location(i);
    end
end

