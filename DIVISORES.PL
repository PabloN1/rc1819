%lista_divisores(+X,+Y, -ListaR)
%es cierto cuando ListaR unifica con una lista que contiene
%a los numeros cuyo resto de la division entera de X entre Z es igual a 0  para valores de Z entre 1 y 0
%
%

lista_divisores(_, 1, [1]).
lista_divisores(X, Y, [Y|R]):-
  Y > 1,
  Y2 is Y-1,
  lista_divisores(X,Y2, R),
  0 is X mod Y.
lista_divisores(X, Y, R):-
  Y > 1,
  Y2 is Y-1,
  lista_divisores(X,Y2, R),
  Z is X mod Y, Z \== 0.


primo(X):- lista_divisores(X,X, [X,1]).



primosEntreXY(X,Y,[]):- X>Y.
primosEntreXY(X,Y,[X|R]):-
X=< Y,
X2 is X+1, primo(X),
primosEntreXY(X2,Y,R).

primosEntreXY(X,Y,[X|R]):-
X=< Y,
X2 is X+1, \+ primo(X),
primosEntreXY(X2,Y,R).