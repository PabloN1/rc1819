%


miembro(t(E,_,_),E).
miembro(t(_,L,R),E):-
L \= nil, R \= nil,
	miembro(L,E),
	miembro(R,E).
	