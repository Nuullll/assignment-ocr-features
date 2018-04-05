function [ feature ] = blockwise_counter( img )
% feature extractor: block-wise black pixel counter

% divide img into block_sizexblock_size blocks and count black pixels in each block
% accept binarized image
% resize template image `img` to norm_sizexnorm_size
% therefore `feature` is a row vector

norm_size = 64;
block_size = 8;
step = 2;
count = norm_size/step - block_size/step + 1;

res_img = imbinarize(imresize(double(~img),[norm_size norm_size]));

blocks = ones(block_size,block_size,count,count);

for i = 1:count
    for j = 1:count
        blocks(:,:,i,j) = res_img((i-1)*step+1:(i-1)*step+block_size,...
            (j-1)*step+1:(j-1)*step+block_size);
    end
end

feature = reshape(squeeze(sum(sum(blocks))),1,[]);


end

