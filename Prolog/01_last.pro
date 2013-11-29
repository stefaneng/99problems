% Problem 1.01 (*)
% Find the last element of the list.

% Example:
% ?- my_last(X,[a,b,c,d]).
% X = d

my_last(X,[X]).
my_last(X,[_|T]):- my_last(X,T).

