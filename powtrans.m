function [imgMod] = powtrans(img, c, gamma)
    imgMod = c * (double(img) .^ gamma);
    imgMod = imgMod./max(max(imgMod)); % normalization
end

% figure; imshow(image);
% figure; imshow(powtrans(image, 2, 0.1));