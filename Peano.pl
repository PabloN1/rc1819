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

