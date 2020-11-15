%   FSPECIAL Create predefined 2-D filters.
%   H = fspecial(‘filter’ , parameter) creates a two-dimensional filter H of the
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

img = imread('images/examination.tif'); % Image Uploaded.
img=im2double(img); % Converted to double type.

subplot(3,3,1); 
imshow(img); 
title('Original Image','FontSize',15);

hAverageFilter = fspecial('average',3); %mask 3x3
averageFilter = imfilter(img,hAverageFilter,'replicate');
subplot(3,3,2); 
imshow(averageFilter);
title('Averaging Filter','FontSize',15);

hBlurredFilter = fspecial('disk',10);
blurred = imfilter(img,hBlurredFilter,'replicate');
subplot(3,3,3); 
imshow(blurred); 
title('Blurred Filter','FontSize',15);

hGaussianFilter = fspecial('gaussian',3,2);
gaussian = imfilter(img,hGaussianFilter,'replicate');
subplot(3,3,4); 
imshow(gaussian); 
title('Gaussian Filter','FontSize',15);

hLaplacianFilter = fspecial('laplacian');
laplacian = imfilter(img,hLaplacianFilter,'replicate');
subplot(3,3,5); 
imshow(laplacian); 
title('Laplacian Filter','FontSize',15);

hLogFilter = fspecial('log');
log = imfilter(img, hLogFilter, 'replicate');
subplot(3,3,6); 
imshow(log); 
title('Log Filter','FontSize',15);

hMotionFilter = fspecial('motion', 50, 45);
motion = imfilter(img,hMotionFilter,'replicate');
subplot(3,3,7); 
imshow(motion); 
title('Motion Filter','FontSize',15);

hPrewittFilter = fspecial('prewitt');
prewitt = imfilter(img,hPrewittFilter,'replicate');
subplot(3,3,8); 
imshow(prewitt); 
title('Prewitt Filter','FontSize',15);

hSobelFilter = fspecial('sobel');
sobel = imfilter(img,hSobelFilter,'replicate');
subplot(3,3,9); 
imshow(sobel); 
title('Sobel Filter','FontSize',15);
