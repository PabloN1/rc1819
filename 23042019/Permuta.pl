% permuta(+Lista, -Lista)


permuta([],[]).
permuta(R2,[Cabeza|Resto]):- permuta(R,Resto),insertar_todas(Cabeza,R,R2).


% insertar_todas(+E, +Lista, -R)

insertar_todas(E, Lista, [E|Lista]).
insertar_todas(E, [Cabeza|Resto], [Cabeza|R]):-
insertar_todas(E, Resto, R).