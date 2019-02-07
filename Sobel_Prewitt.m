%Read and display the input image
I = imread('TestPAttern.tif');
figure
imshow(I);
title('Original Image')

%sobel: Calculate the gradient magnitude and direction using the directional gradients.
EdgeS = edge(I,'sobel');
[Gx,Gy] = imgradient(I,'sobel');

%prewitt: Calculate the gradient magnitude and direction using the directional gradients.
EdgeP = edge(I,'prewitt');
[Gx1,Gy1] = imgradient(I,'prewitt');

%Show edge detection results from both methods 
figure
imshowpair(EdgeS,EdgeP,'montage')

%sobel: show the gradient magnitude and direction.
figure 
[Gmag,Gdir] = imgradient(Gx,Gy);
imshowpair(Gmag,Gdir, 'montage');

%prewitt: show the gradient magnitude and direction.
figure
[Gmag1,Gdir1] = imgradient(Gx1,Gy1);
imshowpair(Gmag1,Gdir1, 'montage');

