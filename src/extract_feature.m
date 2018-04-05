function [ feature ] = extract_feature( img )
% Feature extractor

% divide img into 8x8 blocks and count black pixels in each block
% accept binarized image
% resize template image `img` to 32x32
% therefore `feature` is a 16x1 vector

norm_size = 32;
block_size = 8;
step = 2;
count = norm_size/step - block_size/step + 1;

img = imbinarize(imresize(double(~img),[norm_size norm_size]));

blocks = ones(block_size,block_size,count,count);

for i = 1:count
    for j = 1:count
        blocks(:,:,i,j) = img((i-1)*step+1:(i-1)*step+block_size,...
            (j-1)*step+1:(j-1)*step+block_size);
    end
end

feature = reshape(squeeze(sum(sum(blocks))),1,[]);

end

