function idx = findClosestCentroids(X, centroids)
%FINDCLOSESTCENTROIDS computes the centroid memberships for every example
%   idx = FINDCLOSESTCENTROIDS (X, centroids) returns the closest centroids
%   in idx for a dataset X where each row is a single example. idx = m x 1 
%   vector of centroid assignments (i.e. each entry in range [1..K])

% Set K, m
K = size(centroids, 1);
m = size(X,1);

% You need to return the following variables correctly.

% ====================== YOUR CODE HERE ======================
% Instructions: Go over every example, find its closest centroid, and store
%               the index inside idx at the appropriate location.
%               Concretely, idx(i) should contain the index of the centroid
%               closest to example i. Hence, it should be a value in the 
%               range 1..K
% Note: You can use a for-loop over the examples to compute this.

temp_idx = zeros(m, K);
for k = 1:K
    temp_idx(:,k) = sum(arrayfun(@(x) norm(x)^2, ... 
                                  bsxfun(@minus, X, centroids(k,:))), 2);
end
[~, idx] = min(temp_idx, [], 2);
% =============================================================
end

