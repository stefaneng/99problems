% Problem 1.06 (*)
% Find out whether a list is a palindrome.

palindrome([],[]).
palindrome(X):- reverse(X,X).
