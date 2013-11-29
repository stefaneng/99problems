% Problem 1.03 (*)
% Find the K'th element of a list. 

% Example:
% ?- element_at(X,[a,b,c,d,e],3).
% X = c

element_at(X,[X|_],1).
element_at(X,[_|T],N):-  M is N - 1, element_at(X,T,M).
