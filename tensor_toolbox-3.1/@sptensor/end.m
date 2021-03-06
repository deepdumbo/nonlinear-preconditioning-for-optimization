function e = end(X,k,n)
%END Last index of indexing expression for sparse tensor.
%
%   The expression X(end,:,:) will call END(X,1,3) to determine
%   the value of the first index.
%
%   See also SPTENSOR, SPTENSOR/SUBSREF, END.
%
%MATLAB Tensor Toolbox.
%Copyright 2015, Sandia Corporation.

% This is the MATLAB Tensor Toolbox by T. Kolda, B. Bader, and others.
% http://www.sandia.gov/~tgkolda/TensorToolbox.
% Copyright (2015) Sandia Corporation. Under the terms of Contract
% DE-AC04-94AL85000, there is a non-exclusive license for use of this
% work by or on behalf of the U.S. Government. Export of this data may
% require a license from the United States Government.
% The full license terms can be found in the file LICENSE.txt

switch n
    case 1 %linear indexing
        e = prod(X.size);
    case ndims(X) %subscript indexing
        e = X.size(k);
    otherwise
        error('Invalid subscripting');
end
    
