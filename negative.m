function [imgMod] = negative(img)
    greylevel = 256;
    imgMod = (greylevel - 1) - img;
end

% figure; imshow(image);
% figure; imshow(negative(image));
% figure; imshow(image_rgb);
% figure; imshow(negative(image_rgb));