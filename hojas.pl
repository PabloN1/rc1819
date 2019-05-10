% leaves(+T,-List)
% it is true if List unify with the labels
% in leaves of tree

leaves(nil,[]).
leaves(t(E,nil,nil),[E]).
leaves(t(_,L,R),LISTA):-
	L \= nil, R \= nil,
	leaves(L,RL),
	leaves(R,RR),
	append(RL,RR,LISTA).
	
	
leaves(t(_,L,nil),RL):- 
L \= nil,
leaves(L,RL).


leaves(t(_,nil,R),RR):- 
R \= nil,
leaves(R,RR).









