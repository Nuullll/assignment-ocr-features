function [ feature ] = rowwise_sort( img )
% feature extractor: row-wise sort

% count black pixels of each column,
% then calculate black/all ratio of each column.
% sort ratio

norm_size = 32;

[a,b] = size(img);
res_img = imbinarize(imresize(double(~img),[norm_size norm_size]));

row_ratio = sum(res_img,2)/b;

[~,feature] = sort(row_ratio);

end
