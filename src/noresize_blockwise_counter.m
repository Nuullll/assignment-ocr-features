function [ feature ] = noresize_blockwise_counter( img )
% feature extractor: block-wise black pixel counter without resizing

% use normalized units to avoid resizing

bin_width = 0.1;
step = 0.025;
count = 1/step - floor(bin_width/step) + 1;
bin_edges = (0:count-1)*step;

[a,b] = size(img);

row_edges = floor(a*bin_edges)+1;
row_bin_width = round(a*bin_width);
col_edges = floor(b*bin_edges)+1;
col_bin_width = round(b*bin_width);

r_img = ~img;

feature = [];

for i = 1:length(row_edges)
    row_u = row_edges(i);
    row_d = min(a,row_u+row_bin_width);
    for j = 1:length(col_edges)
        col_l = col_edges(j);
        col_r = min(b,col_l+col_bin_width);
        
        block = r_img(row_u:row_d,col_l:col_r);
        feature(end+1) = sum(block(:));
    end
end

end

