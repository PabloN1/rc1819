% Aritmetica de Peano
%
%
% suma(?X,?Y,?Z)
% Es cierto si Z unifica con la suma de X e Y en aritmetica de Peano

suma(0,Y,Y).

suma(n(X),Y,n(Z)):- suma(X,Y,Z).


% resta(X,0,X).
% resta(X,n(Y), Z):- resta(X,Y, n(Z)).

resta(X,0,X).
resta(X,n(Y),Z):-resta(X,Y,Z).


% producto(?X,?Y,?Z)
% Es cierto si Z es unifica con un numero en aritmetica de Peano resultado de sumar

producto(0,_,0).
producto(n(X),Y,Z2):- producto(X,Y,Z),suma(Z,Y,Z2).


% p2d(+P,-D)
% es cierto si D unifica con el decimal
% equivalente a su representación.

p2d(0,0).
p2d(n(X),R):- p2d(X,D), R is D + 1.


% D2p(+D,-P)
% es cierto si P unifica con el Peano
% equivalente a su representación.

d2p(0,0).
d2p(X,n(P)):- X2 is X-1, d2p(X2,P).

