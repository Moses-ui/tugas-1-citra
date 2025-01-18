function [imgMod] = logtrans(img, c)
    imgMod = c * log(double(img) + 1);
    imgMod = imgMod./max(max(imgMod)); % normalization
end

% figure; imshow(image);
% figure; imshow(logtrans(image, 2000));