function [ feature ] = hog( img )
% feature extractor: HOG feature

norm_size = 24;
cell_size = [2 2];

res_img = imbinarize(imresize(double(~img),[norm_size norm_size]));

feature = extractHOGFeatures(res_img,'CellSize',cell_size);

end
