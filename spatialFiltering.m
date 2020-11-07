%   FSPECIAL Create predefined 2-D filters.
%   H = FSPECIAL(TYPE) creates a two-dimensional filter H of the
%   specified type. Possible values for TYPE are:
%
%     'average'   averaging filter
%     'disk'      circular averaging filter
%     'gaussian'  Gaussian lowpass filter
%     'laplacian' filter approximating the 2-D Laplacian operator
%     'log'       Laplacian of Gaussian filter
%     'motion'    motion filter
%     'prewitt'   Prewitt horizontal edge-emphasizing filter
%     'sobel'     Sobel horizontal edge-emphasizing filter
%     'unsharp'   unsharp contrast enhancement filter
%
%   Depending on TYPE, FSPECIAL may take additional parameters
%   which you can supply.  These parameters all have default
%   values. 

clear; close all;

img = imread('examination.tif');

subplot(3,3,1); 
imshow(img); 
title('Original Image','FontSize',15);

type = fspecial('average',3);
Averaging = imfilter(img,type,'replicate');
subplot(3,3,2); 
imshow(Averaging);
title('Averaging Filter Image','FontSize',15);

type = fspecial('disk',10);
blurred = imfilter(img,type,'replicate');
subplot(3,3,3); 
imshow(blurred); 
title('Blurred Image','FontSize',15);

type = fspecial('gaussian',10,2);
gaussian = imfilter(img,type,'replicate');
subplot(3,3,4); 
imshow(gaussian); 
title('Gaussian Lowpass Filter','FontSize',15);

type = fspecial('laplacian');
laplacian = imfilter(img,type,'replicate');
subplot(3,3,5); 
imshow(laplacian); 
title('Laplacian Filter','FontSize',15);

type = fspecial('log');
log = imfilter(img,type,'replicate');
subplot(3,3,6); 
imshow(log); 
title('Log Filter','FontSize',15);

type = fspecial('motion');
motion = imfilter(img,type,'replicate');
subplot(3,3,7); 
imshow(motion); 
title('Motion Filter','FontSize',15);

type = fspecial('prewitt');
prewitt = imfilter(img,type,'replicate');
subplot(3,3,8); 
imshow(prewitt); 
title('Prewitt Filter','FontSize',15);

type = fspecial('sobel');
sobel = imfilter(img,type,'replicate');
subplot(3,3,9); 
imshow(sobel); 
title('Sobel Filter','FontSize',15);
