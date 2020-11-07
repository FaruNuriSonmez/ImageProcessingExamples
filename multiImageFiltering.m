%   MULTIPLEIMAGE Read all pictures in a folder.

clear; close all;

imagefiles=[dir('*.tif');dir('*.png');dir('*.bmp')] ;  % Get tif, png and bmp files in the present folder 
N = length(imagefiles) ;  % Total number of image files 
for i = 1:N  % loop for each file 
    currentfilename = imagefiles(i).name;
    currentimage = imread(currentfilename);
    type = fspecial('motion');
    motion = imfilter(currentimage,type,'replicate');
    subplot(3,3,i);
    imshow(motion); 
    title('Motion Filter','FontSize',15);
end
