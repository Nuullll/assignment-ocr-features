function [ feature ] = extract_feature( img )
% Feature extractor

extract_fun = @blockwise_counter;

feature = extract_fun(img);

end

