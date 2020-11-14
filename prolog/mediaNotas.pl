media(N1,N2,N3,R):- M is (N1+N2+N3)/3,
  avaliar(M, R).

avaliar(M,"Aprovado"):- M >= 7.
avaliar(M,"Reprovado"):- M < 4.
avaliar(M,"Final").

% media(N1,N2,N3,R):- M is (N1+N2+N3)/3,
%                     (M >= 7 -> R = "Aprovado"; (M < 4 -> R = "Reprovado" ; R = "Final")).


main:- read(N1),
  read(N2),
  read(N3),
  media(N1,N2,N3,R),
  write(R), nl, halt.