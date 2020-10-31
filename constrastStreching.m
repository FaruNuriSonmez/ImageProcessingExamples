clc
clear all
close all

img = imread('b.png');

gray=rgb2gray(img);

r1=20;
r2=150;
s1=150;
s2=150;
L=255;

a=r1/s1;
b=(r2-r1)/(s2-s1);
g=(L-r2)/(L-s2);

subplot(1,2,1)
imshow(gray);
title('orijinal image');
[x, y, z] = size(gray);

for i=1:x
    for j=1:y
        if gray(i,j)<=r1
            r=gray(i,j);
        elseif gray(i,j)>r1 && gray(i,j)<=150
            r=gray(i,j);
            gray(i,j)=(b*(r-s1))+r1;
        else
            r=gray(i,j);
            gray(i,j)=(g*(r-s2))+r2;
        end
    end
end
subplot(1,2,2)
imshow(gray);
title('enhanced image');