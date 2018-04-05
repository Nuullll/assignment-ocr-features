function [ corr_coef ] = match_corr( vec1, vec2 )
% return similarity coefficient

norm1 = norm(vec1);
norm2 = norm(vec2);

corr_coef = sum(vec1.*vec2) / (norm1*norm2);

end

