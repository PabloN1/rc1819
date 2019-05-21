% Canibales y Misionarios

% 1. State Representation
% state(+MisionariosenlaDerecha,+CanibalesDerecha, +Posbarco)
% Initial State
% Final Sta

% 2. Movements

mov(move(M,C,izquierda),estado(MD,CD),estado(MDN,CDN)):-
	pasar(M,C),
	M =< MD, C =< CD,
	MDN is MD - M, CDN is CD - C,
	\+ no_valido(estado(MDN,CDN,_)).
	
mov(pasar(M,C,derecha), estado(MD,CD,izquierda),
	estado(MDN, CDN)):-
	pasar(M,C),
	MI is 3 - MD, CI is 3 - CD,
	M =< MI, C =< CI,
	MDN is MD + M, CDN is CD + C,
	\+ no_valido(estado(MDN,CDN,_)).
	

% pasar
pasar(2,0).
pasar(0,2).
pasar(1,1).
pasar(1,0).
pasar(0,1).	

% valido(estado(Misioneros, CanibalesDch, SituacionBote)).

valido(estado(3,3,_)).
valido(estado(3,2,_)).
valido(estado(3,1,_)).
valido(estado(3,0,_)).
valido(estado(2,2,_)).
valido(estado(2,1,_)).

novalido(estado(2,3,_)).
novalido(estado(1,3,_)).
novalido(estado(1,2,_)).
novalido(estado(1,0,_)).
novalido(estado(2,0,_)).
novalido(estado(2,1,_)).

camino(Ini, Ini,_,[]).
camino(Ini, Fin, Visitados,):-
	mov(pasar(M,C, SituacionBote),Ini,Temp),
	\+ member(Temp,Visitados),
	camino(Temp,Fin,[Temp|Visitados],Camino).


