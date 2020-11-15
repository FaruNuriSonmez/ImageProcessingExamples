clc; clear; close all;

img = imread('images/pout.tif');

r1=input('Enter r1: ');
r2=input('Enter r2: ');
s1=150;
s2=150;
L=255;

a=r1/s1;
b=(r2-r1)/(s2-s1);
g=(L-r2)/(L-s2);

subplot(1,2,1)
imshow(img);
title('orijinal image');
[x, y, z] = size(img);

for row=1:x
    for column=1:y
        if img(row,column)<=r1
            r=img(row,column);
        elseif img(row,column)>r1 && img(row,column)<=150
            r=img(row,column);
            img(row,column)=(b*(r-s1))+r1;
        else
            r=img(row,column);
            img(row,column)=(g*(r-s2))+r2;
        end
    end
end

subplot(1,2,2)
imshow(img);
title('edited image');