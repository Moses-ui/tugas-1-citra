image1 = imread("Images/1_Histogram/boat.bmp");
image2 = imread("Images\1_Histogram\washed_out_aerial_image.tif");
image_rgb = imread("Images/2_Image Enhancement/building.jpg");

% [match, ~] = histmatch(image2, image1);
% figure; imshow(image1);
% figure; imshow(image2);
% figure; imshow(match);
% figure; imshow(imhistmatch(image2, image1));
% figure; imhist(histeqin);
% figure; imhist(histeqimage);

% if all(histeqimage == histeqin)
%     disp("True");
% end

% imshow(histo(image_rgb));
% imhist(image_rgb);

figure; imshow(powtrans(image_rgb, 2, 0.1));
% figure, imhist(powtrans(image_rgb, 2, 0.1));
figure, bar(0:255, histo(im2uint8(powtrans(image_rgb, 2, 0.1))));