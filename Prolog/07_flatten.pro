% Problem 1.07 (**)
% Flatten a nested list structure.

% Transform a list, possibly holding lists as elements into a 'flat' list by replacing each list with its elements (recursively).

% Example:
% ?- my_flatten([a, [b, [c, d], e]], X).
% X = [a, b, c, d, e]

% Hint: Use the predefined predicates is_list/1 and append/3
my_flatten([],[]).
my_flatten([H|T], X):-
    is_list(H),
    my_flatten(H, HS),
    my_flatten(T, TS),
    append(HS, TS, X),
    !.
my_flatten([H|T], [H|S]):-
    my_flatten(T,S).
    
    


