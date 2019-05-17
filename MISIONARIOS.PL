% Canibales y Misionarios

% 1. State Representation
% state(+MisionariosenlaDerecha,+CanibalesDerecha, +Posbarco)

% Initial State
state(3,3,right).

% Final State
state(0,0,_).

% 2. Movements

mov(move(M,C,left),state(MR,CR),state(NMR, NCR)):-
	T is M + C, T =< 2,T >= 1,
	M =< MR, C =< CR,
	CR =< MR,
	ML is 3 - MR, CL is 3-CR
	NML is ML + M, NCL is CL + C,
	NCL =< NML,NMR is MR - M, NCR is CR - C,
	NCR =< NMR.
	