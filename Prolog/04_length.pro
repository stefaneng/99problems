% Problem 1.04
% Find the number of elements of a list.

my_length([], 0).
my_length([_|T], N):- 
    my_length(T, M),
    N is M + 1.
