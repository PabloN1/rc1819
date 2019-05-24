% balanceado
% es cierto si ArbolBinario es balanceado, es decir, para todo nodo la diferencia de altura entre su hijo izquierdo y su hijo derecho es como maximo

 balanceado(nil).
 balanceado(a(_,HI,HD)):-
	altura(HI,RL),
	altura(HD,RR),
	D is abs(AI-AD),
	D =< 1,
	balanceado(HI),
	balanceado(HD).
 
 
 
 
 
 %altura(nil,0).
 
 altura(a(_,HI,HD),AT):-
	altura(HI,AI),
	altura(HD,AD),
	A is max(AI,AD),
	AT is max(AI,AD).
