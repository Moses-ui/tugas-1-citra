function [imgMod] = brightening(img, b, a)
    if nargin < 3
        a = 1;
    end
    
    imgMod = img * a + b;
end

% figure; imshow(image);
% figure; imshow(image, 100);
% figure; imshow(brightening(image, 50, 2));