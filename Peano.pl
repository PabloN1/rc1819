% Aritmetica de Peano
%
%
% suma(?X,?Y,?Z)
% Es cierto si Z unifica con la suma de X e Y en aritmetica de Peano

suma(0,Y,Y).

% resta(X,n(Y), Z):- resta(X,Y, n(Z)).

resta(X,0,X).
resta(X,n(Y),Z):-resta(X,Y,Z).


% producto(?X,?Y,?Z)5
% Es cierto si Z es unifica con un numero en aritmetica de Peano resultado de sumar

suma(n(X),Y,n(Z)):- suma(X,Y,Z).


% resta(X,0,X).
producto(0,_,0).
producto(n(X),Y,Z2):- producto(X,Y,Z),suma(Z,Y,Z2).0


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



% division(?X,?Y,?Z)
% es cierto si Z es el resultado de la division
% entera de X entre Y

division(X,Y,0):- menor(X,Y).
division(X,Y,n(Z)):- resta(X,Y,R),division(R, Y , Z).


% menor(?X,?Y)
%es cierto si X es menor que Y
menor(0, n(_)).
menor(n(X), n(Y)):- menor(X,Y).


% modulo(?X,?Y,?Z)
% es cierto so Z unifica con el resto de la division
% entera de X entre Y

modulo(X,Y,Z):- menor(X,Y).
modulo(X,Y,Z):- resta(X,Y,X2), modulo(X2,Y,Z).


%mayor_o_igual(?X,?Y)
% X es mayor o igual que Y

mayor_o_igual(n(X),0).:-peano(X).

% peamo(X)
% Es cierto si es valido en la representación de aritmeticade peano

peano(0).
peano(n(X)):- peano(X).