function [imgMod] = contraststretching(img)
    rmin = min(min(img));
    rmax = max(max(img));
    imgMod = (img - rmin) .* (255 / (rmax - rmin));
end

% figure; imshow(image_rgb);
% figure; histo(image_rgb);
% 
% imgMod = contraststretching(image_rgb);
% figure; imshow(imgMod);
% figure; histo(imgMod);