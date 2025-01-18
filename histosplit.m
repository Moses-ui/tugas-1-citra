function [histArr] = histosplit(img) % split histogram per channel for rgb image only
    graylevel = 256;
    histArr = zeros(graylevel, 1, 3);

    % iterate each pixel of image and count each occurance
    for row = 1:size(img, 1)
        for col = 1:size(img, 2)
            for rgb = 1:size(img, 3)
                histArr(img(row, col, rgb) + 1, 1, rgb) = histArr(img(row, col, rgb) + 1, 1, rgb) + 1;
            end
        end
    end

    % figure; dispHisto(histArr(:,:,1));
    % figure; dispHisto(histArr(:,:,2));
    % figure; dispHisto(histArr(:,:,3));
end

% plot(0:255, image_histo)
% histogram('BinEdges', 0:256, 'BinCounts', image_histo)
function dispHisto(histArr)
    bar(0:255, histArr)
end