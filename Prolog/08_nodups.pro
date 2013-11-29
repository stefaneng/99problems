% Problem 1.08 (**)
% Eliminate consecutive duplicates of list elements.

% If a list contains repeated elements they should be replaced with a single copy of the element. 
% The order of the elements should not be changed.

% Example:
% ?- compress([a,a,a,a,b,c,c,a,a,d,e,e,e,e],X).
% X = [a,b,c,a,d,e]

compress([],[]).
compress([X,X|T], S):-
    compress([X|T], S), !.
compress([H|T], [H|S]):-
    compress(T,S).

