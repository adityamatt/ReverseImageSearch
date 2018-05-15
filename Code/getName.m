function [ name ] = getName( location )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
    [~, len]=size(location);
    start=len;
    while (start>0 && location(start)~='/')
        start=start-1;
    end
    name='';
    for i=start+1:len-4
        if (location(i)~=' ')
            name(i-start)=location(i);
        end
    end
end
