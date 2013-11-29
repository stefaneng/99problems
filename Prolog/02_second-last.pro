% Problem 1.02 (*)
% FInd the last but one element of a list.

second_last(X,[X,_]).
second_last(X,[_|T]):- second_last(X,T).
