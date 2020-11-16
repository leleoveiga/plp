cidade(a,b, 23).
cidade(a,d, 26).
cidade(b,e, 19).
cidade(b,c, 20).
cidade(c,d, 20).
cidade(c,f, 19).
cidade(d,f, 30).
cidade(e,f, 14).

caminho(C1, C2, D) :- cidade(C1, C2, R), D is R; cidade(C1, X, R), cidade(X, C2, S), D is R+S; D is 0.

printa(N) :- N>0 -> write(N) ; write("Caminho impossível").

main:-
  read(C1),
  read(C2),
  caminho(C1, C2, D),
  printa(D), halt.