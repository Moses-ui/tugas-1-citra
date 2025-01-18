function [imgMod, heq] = histequal(img)
    if size(img, 3) == 3 % rgb image histogram is splitted per channel
        h = histosplit(img);
        heq = zeros(256, 1, 3);
        sum = zeros(1, 1, 3);
    else
        h = histo(img);
        heq = zeros(256, 1);
        sum = zeros(1, 1);
    end
    s = size(img, 1) * size(img, 2);
    h = h / s;
    imgMod = img;
    for i=1:256
        for rgb=1:size(img, 3)
            sum(rgb) = sum(rgb) + h(i, 1, rgb);
            heq(i, 1, rgb) = floor(255 * sum(rgb));
        end
    end

    for row = 1:size(img, 1)
        for col = 1:size(img, 2)
            for rgb = 1:size(img, 3)
                imgMod(row, col, rgb) = heq(imgMod(row, col, rgb) + 1, 1, rgb);
            end
        end
    end
end