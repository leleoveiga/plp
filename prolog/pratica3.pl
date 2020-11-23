div(L,A,B) :- append(A,B,L),
            length(A,N),
            length(B,N).

div(L,A,B) :- append(A,B,L),
            length(A,N),
            N2 is N + 1,
            length(B,N2).

soma([X],X).
soma([H1,H2 | T], S) :- soma([H1+H2|T], S).

checaSoma(R1,R2) :- R1 > R2, write("esquerda");
                    R1 < R2, write("direita");
                    R1 =:= R2, write("esquerda").
    
main :- read(L),
        div(L,X,Y),
        soma(X,R1),
        soma(Y,R2),
        checaSoma(R1,R2),nl,halt.