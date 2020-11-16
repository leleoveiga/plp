quatroDig(N1,N2,N3,N4,"Sim"):- N1 < N3,
                                N4 =:= (N3 + N2),
                                ehImpar(N1),
                                N1 =:= (N2 + 1), !.

quatroDig(_N1,_N2,_N3,_N4,"Nao").

ehImpar(N):- N mod 2 =\= 0.

main:- read(N1),
    read(N2),
    read(N3),
    read(N4),
    quatroDig(N1,N2,N3,N4,R),
    write(R), nl, halt.