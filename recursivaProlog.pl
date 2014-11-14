multiplos(N,X,M) :-
    M is X div N.

multiplosDos(N,X,M) :-
    multiplosAux(N,N,X,R),
    M is R.

multiplosAux(N,X,Y,M) :-
    X =< Y,
    Z is X + N,
    multiplosAux(N,Z,Y,R),
    M is R + 1.

digitos(0,R) :-
    R is 0.
digitos(N,D) :-
    N > 0,
    X is N // 10,
    digitos(X,S),
    D is S + 1.
    
     
