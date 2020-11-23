delete([_|X],0,X).
delete([X|Z],I,[X|Y]):- I1 is I-1, delete(Z,I1,Y).

main:- read(L),
    read(I),
    delete(L,I,R),
    write(R), halt.