% quicksort(+Lista,-R)
% es cierto cuando R unifica con una lista
% que contiene los elementos de L con E
% insertado en su posicion correcta
% L puede tener elementos repetidos y L esta ordenada

quicksort([],[]).
quicksort([Ca|Resto],R):- dividir(Ca,Resto, Me, Ma),
quicksort(Me,RME),
quicksort(Ma,RMA),
append(RME, [Ca|RMA],R).



% dividir(+P,+Lista, -Menores, -Mayores)
% es cierto cuando Menores unifica con
% los elementos de Lista que son menores
% o iguales que P y Mayores unifica con los elementos
% de Lista que son mayores que P


dividir(_,[],[],[]).
dividir(Elem,[Cab|Resto], Menores, [Cab|Mayores]):- Cab > Elem, dividir(Elem, Resto, Menores, Mayores).
dividir(Elem,[Cab|Resto], [Cab|Menores], Mayores):- Cab =< Elem, dividir(Elem, Resto, Menores, Mayores).