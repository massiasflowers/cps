% Load image (file name changed)
I=imread('Tester.jpg');
% Look for red-ish value.  Play around with this to get what you want. 
% Play around with these 3 thresholds until you get what you want.

isRed = I(:,:,1)>100 & I(:,:,2)>100 & I(:,:,3)>100;
isRedArray = repmat(isRed,1,1,3); 
% Replace red-ish values with black just to see how well your thresholds work
I_temp = I; 
I_temp(isRedArray) = 0;
figure(1)
imshow(I_temp)
% Once you're happy with your thresholds above, rescale the selected RGB values
% toward white ([255,255,255]).  There may be a better approach such as scaling
% the rgb values separately. 
I_new = I; 
I_new(isRedArray) = I_new(isRedArray)- 100; 
% Compare the original and new image. 
figure(3)
subplot(1,2,1)
imshow(I)
title('Original')
subplot(1,2,2)
imshow(I_new)
title('Pinker')