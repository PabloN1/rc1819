% ord_inser(+Lista,-R).
% es cierto si R unifica con una lista que contiene
% los elementos de lista ordenados de menor a mayor
% Lista puede contener elementos repetidos.
%

ord_inser([],[]).
ord_inser([Cab|Resto],RT):- ord_inser(Resto,R), insert_ord(Cab,R,RT).



% insert_ord(+E,+L,-R)
% es cierto cuando R unifica con una lista
% que contiene los elementos de L con E
% insertado en su posicion correcta
% L puede tener elementos repetidos y L esta ordenada

% ordenada de menor a mayor.

insert_ord(E,[],[E]).
insert_ord(E,[C|R],[C|R2]):- C<E, insert_ord(E,R,R2).
insert_ord(E,[C|R],[E,C|R]):- E=<C.