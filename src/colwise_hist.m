function [ feature ] = colwise_hist( img )
% feature extractor: column-wise histcounts

% create `bin_count` bins,
% e.g. 0, 0.2, 0.4, 0.6, 0.8 (5bins, bin_width=0.2)
% unit: normalized width
% e.g. bin:[0,0.2] represents img(:,1:0.2*width_of_img)

% count black pixels of each column,
% then calculate black/all ratio of each column.
% add each ratio to the corresponding bin

% don't need to resize `img`

bin_count = 15;
bin_width = 1 / bin_count;
bin_edges = (0:bin_count-1)*bin_width;

[a,b] = size(img);
r_img = ~img;   % make black pixels = 1

col_ratio = sum(r_img)/a;

for i = 1:bin_count
    bin_edges(i) = sum(col_ratio(floor((i-1)*bin_width*b)+1:floor(i*bin_width*b)));
end

feature = bin_edges;

end

