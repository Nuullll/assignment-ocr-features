function [ feature ] = rowwise_hist( img )
% feature extractor: row-wise histcounts

bin_count = 10;
bin_width = 1 / bin_count;
bin_edges = (0:bin_count-1)*bin_width;

[a,b] = size(img);
r_img = ~img;   % make black pixels = 1

row_ratio = sum(r_img,2)/b;

for i = 1:bin_count
    bin_edges(i) = sum(row_ratio(floor((i-1)*bin_width*a)+1:floor(i*bin_width*a)));
end

feature = bin_edges;

end


