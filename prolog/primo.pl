prime(2).
prime(X):- nextDiv(3,X,R), R =:= X.

nextDiv(I,N,R):- N mod I =:= 0, R = I, !.
nextDiv(I,N,R):- I2 is I+1, nextDiv(I2,N,R).

main:- read(X),
  prime(X).