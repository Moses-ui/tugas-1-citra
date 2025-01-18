function [histArr] = histo(img)
    graylevel = 256;
    histArr = zeros(graylevel, 1);

    % iterate each pixel of image and count each occurance
    for row = 1:size(img, 1)
        for col = 1:size(img, 2)
            for rgb = 1:size(img, 3) % size(img, 3) returns 3 if rgb or 1 if not
                histArr(img(row, col, rgb) + 1) = histArr(img(row, col, rgb) + 1) + 1; % rgb indexing 1 won't produce error
            end
        end
    end
end