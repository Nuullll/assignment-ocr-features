function [ feature ] = colwise_sort( img )
% feature extractor: column-wise sort

% count black pixels of each column,
% then calculate black/all ratio of each column.
% sort ratio

norm_size = 32;

[a,b] = size(img);
res_img = imbinarize(imresize(double(~img),[norm_size norm_size]));

col_ratio = sum(res_img)/a;

[~,feature] = sort(col_ratio);

end

