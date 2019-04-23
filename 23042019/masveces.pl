

masveces([],_,0).
masveces([Cabeza|Resto],Cabeza,N2):- masveces(Resto,E,N), Cabeza=E,N2 is N+1.
masveces([Cabeza|Resto],E,N):- masveces(Resto,E,N), Cabeza\=E.


