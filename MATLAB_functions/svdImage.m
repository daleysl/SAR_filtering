function [Image_AR, svdIm_u, svdIm_s, svdIm_v] = svdImage(Image,lambda)
% This function brings in an image and a weighting parameter and 
% runs inexact_alm_rpca on it. 
%   Inputs: 
%       Image matrix (must be a matrix of real numbers)
%       lambda (must be a positive real number)
%   Outputs:
%       Image_AR: A (Real) matrix solved from inexact_alm_rpca. 
%       svdIm_u, svdIm_s, svdIm_v: SVD components of matrix A where 
%       A = u * s * v' 

[~,n] = size(Image);
mn = mean(Image,2)/2;
Image_resize = Image - repmat(mn,1,n);
[Image_AR,~] = inexact_alm_rpca(Image_resize.',lambda);
[svdIm_u, svdIm_s, svdIm_v] = svd(Image_AR');


end

