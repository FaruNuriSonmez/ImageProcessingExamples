clc; clear all;

img = imread('pout.tif');

max_row = size(img,1);
max_column = size(img,2);

numofpixels=max_row*max_column; 

subplot(2,2,1)
imshow(img);
title('Original Image');
subplot(2,2,3);
imhist(img);
title('Original Histogram');


imgHistogramed=uint8(zeros(max_row,max_column));
freq=zeros(256,1);
probf=zeros(256,1);
probc=zeros(256,1);
cum=zeros(256,1);
output=zeros(256,1);

for row=1:max_row
    for column=1:max_column
        value=img(row,column);
        freq(value+1)=freq(value+1)+1;
        probf(value+1)=freq(value+1)/numofpixels;
    end
end

sum=0;

for i=1:size(freq)
   sum=sum+freq(i);
   cum(i)=sum;
   probc(i)=cum(i)/numofpixels;
   output(i)=round(probc(i)*255);
end

for i=1:max_row
    for j=1:max_column
            imgHistogramed(i,j)=output(img(i,j)+1);
    end
end

subplot(2,2,2);
imshow(imgHistogramed);
title('Edited Image');
subplot(2,2,4);
imhist(imgHistogramed);
title('Edited Histogram');