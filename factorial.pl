factorial(0,1).
factorial(N, R) :-
    N > 0,
    X is N-1,
    factorial(X, W),
    R is N*W.
