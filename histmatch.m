function [imgMod, heq] = histmatch(img, imgref)
    [~, heqori] = histequal(img);
    [~, heqref] = histequal(imgref);
    
    if size(img, 3) == 3
        heq = zeros(256, 1, 3);
    else
        heq = zeros(256, 1);
    end

    for i=1:256
        for rgb=1:size(img, 3)
            minval = 999;
            for j=1:256
                range = abs(heqori(i, 1, rgb) - heqref(j, 1, rgb));
                if range < minval
                    minval = range;
                elseif range > minval
                    heq(i, 1, rgb) = j;
                    break
                end
            end
        end
    end

    imgMod = img;
    for row = 1:size(img, 1)
        for col = 1:size(img, 2)
            for rgb = 1:size(img, 3)
                imgMod(row, col, rgb) = heq(imgMod(row, col, rgb) + 1, 1, rgb);
            end
        end
    end
end