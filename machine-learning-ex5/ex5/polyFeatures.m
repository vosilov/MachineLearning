function [X_poly] = polyFeatures(X, p)
%POLYFEATURES Maps X (1D vector) into the p-th power
%   [X_poly] = POLYFEATURES(X, p) takes a data matrix X (size m x 1) and
%   maps each example into its polynomial features where
%   X_poly(i, :) = [X(i) X(i).^2 X(i).^3 ...  X(i).^p];
%

%X_poly = zeros(numel(X), p);
% You need to return the following variables correctly.
n = size(X, 2); % number of features
X_poly = zeros(size(X,1), p * n);

% ====================== YOUR CODE HERE ======================
% Instructions: Given a vector X, return a matrix X_poly where the p-th 
%               column of X contains the values of X to the p-th power.
%
% 
%X_poly(1:size(X, 1),1:size(X,2)) = X;
for e=1:p
    X_poly(:, n * (e - 1) + 1 : n * e) = X.^e;
end

% =========================================================================

end
