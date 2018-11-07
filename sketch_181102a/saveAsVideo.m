close all;
clear all;

directory = 'data';
allnames=struct2cell(dir(strcat(pwd,'/',directory,'/*.jpg')));
namelist = ones(size(allnames,2),1);
[k,len]=size(allnames);

v = VideoWriter('newfile.avi','Uncompressed AVI');

open(v);

%resultsRecords = [];
for index=0:size(namelist,1)-2
%for index = 0:5000
    %realDir = strcat(directory,'\*.jpg');
    %fileName1=allnames{1,index};
    fileName1 = ['imageCounter_' num2str(index) '.jpg']
    disp('==========================');
    disp(['Processing real image:' fileName1 '...'  num2str(100*index/size(namelist,1)) '%']);
    S=imread([directory '/' fileName1]);
    %figure(1);imshow(S);
    %pause(0.1)
    
    writeVideo(v,S)
end
close(v)