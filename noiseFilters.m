clear; close all;

img = imread('images/cameraman.tif'); % Image Uploaded.
img=im2double(img); % Converted to double type.

subplot(2,3,1); 
imshow(img); 
title('Original Image','FontSize',15);

subplot(2,3,2); 
gaussianFilter=imnoise(img,'gaussian',0.30);
imshow(gaussianFilter); 
title('Gaussian Filter','FontSize',15);

subplot(2,3,3); 
poissonFilter=imnoise(img,'poisson');
imshow(poissonFilter);
title('Poisson Filter','FontSize',15);

subplot(2,3,4); 
saltpepperFilter = imnoise(img,'salt & pepper',0.02);
imshow(saltpepperFilter);
title('Salt & Pepper Filter','FontSize',15);

subplot(2,3,5); 
speckleFilter = imnoise(img,'speckle');
imshow(speckleFilter);
title('Speckle Filter','FontSize',15);


