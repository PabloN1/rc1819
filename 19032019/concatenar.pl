% concatenar (?L1, ?L2M ?R)

% es cierto cuando R unfica con una lista que contiene
% los elementos de L1 seguidos de L2 en el mismo orden

	% L1 = [1,2,3]
	% L2 = [4,5,6]
	
% concatenar([1,2,3],[4,5,6], R).


concatenar([],L2,L2).

concatenar([Ca|Resto],L2, [Ca|R]):-
	concatenar(Resto,L2, R).
	
