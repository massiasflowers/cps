I = imread('David_Aline_2.jfif');


%isRed = I(:,:,1)>100 & I(:,:,2)>100 & I(:,:,3)>100;
%isRedArray = repmat(isRed,1,1,3); 


th = 20;
[x,y,~]=size(I);
for ii=1:x
    for jj=1:y
        if ((I(ii,jj,1)-th)< I(ii,jj,2)&& (I(ii,jj,1)-th)<I(ii,jj,3))
          
        I(ii,jj,1) = I(ii, jj, 1) + 120;I(ii,jj,2) = I(ii, jj, 2) + 200;I(ii,jj,3) =I(ii, jj, 3) + 110; 
        end
    end
end

figure(2)
imshow(I)