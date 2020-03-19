function [Image_AR, R1, svdIm_u, svdIm_s, svdIm_v] = svdImage_refactored(Image,lambda)
% This function brings in an image and a weighting parameter and 
% runs inexact_alm_rpca on it. 
%   Inputs: 
%       Image matrix (complex numbers), 
%       lambda (must be a positive real number)
%   Outputs:
%       Image_AR: A Real matrix solved from inexact_alm_rpca (i.e., A = A+0i) 
%       R1: Real and Imaginary parts of matrix A (i.e., A = A+Ai)
%       svdIm_u, svdIm_s, svdIm_v: SVD components of Real matrix A where 
%       A = u * s * v' 

ur = real(Image);
ui = imag(Image);

[Image_AR,~] = inexact_alm_rpca(real(ur.'),lambda);
[Image_ARi,~] = inexact_alm_rpca(real(ui.'),lambda);

R1 = Image_AR + i*Image_ARi;

[svdIm_u, svdIm_s, svdIm_v] = svd(R1.');

end

