
% hombre(Persona)
% Es cierto si Persona es un hombre.


hombre(jose).
hombre(manuel).
hombre(antonio).


%mujer(Persona)
% Es cierto si Persona es una mujer.

mujer(luisa).
mujer(maria).
mujer(fatima).

% persona(P)
% es cierto si P es hombre o P es mujer

persona(P):- hombre(P).
persona(P):- mujer(P).
