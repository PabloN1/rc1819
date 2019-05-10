%


miembro(t(E,_,_),E).


miembro(t(_,L,_),E):- miembro(L,E).

miembro(t(_,_,R),E):- miembro(R,E).

	