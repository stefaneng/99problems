% Problem 1.05
% Reverse a list
    
% Slow version, needs to append every time
my_reverse([], []).
my_reverse([H|T], X):-
    my_reverse(T,N),
    append(N, [H], X).

% Use helper function to accumulate
helper([], X, X).
helper([H|T], S, N):-
    helper(T,[H|S],N).

% Call the accumulater
fast_reverse(X, Y):- helper(X, [], Y).
