% ord_burbuja(+Lista, -R)
% es cierto si R unifica con una lista que contiene los elementos de Lista ordenados de menor a mayor.
% Puede tener elementos repetidos.

ord_burbuja(Lista,Lista):- ordenada(Lista).
ord_burbuja(Lista,):- append(L1,[E1, E2|Resto], Lista),E1>E2, append(L1, [E2,E1|Resto],R) , ordenada([E|Resto]).


% ordenada(+Lista) 
% es cierto si los elementos de Lista estan ordenados de menor a mayor

ordenada([]).
ordenada([_]).
ordenada([E1,E2|Resto]):- E1 =< E2, ordenada([E2|Resto]).
