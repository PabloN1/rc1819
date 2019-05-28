% grafo(grafo([a,b,c,d], [a(a,b), a(b,c), a(c,a), a(c,d), a(d,a)])).

% conectado(Grafo, Ini, Fin)
% cierto si el vertice Ini esta conectado mediante una arista con el vertices fin en grafo

conectado(grafo(_,A),Ini,Fin):- member(a(Ini,Fin),A).
conectado(g(_,A), Ini, Fin):- member(a(Ini,Fin),A).
conectado(g(_,A), Ini, Fin):- member(a(Fin,Ini),A).

% camino(+Grafo, +Ini, + Fin, + visitados, -camino)
% es cierto si camino unifica con el camino que va desde inicio hasta fin sin repetir vertices /aristas/
% y con un coste total de peso

% Camino como lista de vertice y visitados como lista de aristas
camino(g(V,A),Ini,Ini,_,[Ini]):- member(a(Ini,Fin),A).



camino(g(V,A),Ini,Fin,Visitados,[Ini|Camino]):-
	conectado(G,Ini,Tmp),
	\+ member(a(Ini,Tmp),Visitados),
	camino(G,Tmp,Fin,[a(Ini,Tmp)|Visitados], Camino).
	
ciclos(grafo(V,A),R):- member(Vertice,V),
	bagof(Ciclo,camino(grafo(V,A), Vertice, Vertice,[],Ciclo),R).
	
ciclo(grafo(V,A), R):- member(Vertice, V), camino(grafo(V,A), Vertice,Vertice,[],Ciclo).
	