
dupli([],_,[]).
dupli([C|R],E,L3):- dupli(R,E,L), dupli2(C,E,L2),append(L2,L,L3).



dupli2(E,1,[E]).
dupli2(C,E,[C|R]):- E2 is E-1,E2 > 0, dupli2(C,E2,R).


%[1,2,3]
%[1,1,1,2,2,2,3,3,3]


%[2,3]
%[2,2,2,3,3,3]
%[1]
%[1,1,1]