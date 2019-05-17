% problemma de estado

% juego de garrafas
% 
% 1. Representacion del estado
% estado(G5,G3)
% G5 representa el numero de galones en la garrafa de 5 galones
% G3 representa el numero de galones en la garrafa de 3 galones

%estado inicial
estado(0,0).

%estado final
estado(4,_).


% 2. Representacion de los movimientos
% 
% 1. Llenar garrafa de 5 galones  
% 2. Llenar garrafa de 3 galones
% 3. Vaciar garrafa de 5 galones
% 4. Vaciar garrafa de 3 galones
% 5. Vaciar el contenido de garrafa de 5 en 3
% 6. Vaciar el contenido de garrafa de 3 en 5


% mov(+NombreMov, +EstadoAntes, +EstadoDespues)
% 

% 1. Llenar garrafa de 5 galones
mov(llenar5, estado(_,G3), estado(5, G3)).

% 2. Llenar garrafa de 3 galones
mov(llenar3, estado(G5,_), estado(G5, 3)).

% 3. Vaciar garrafa de 5 galones
mov(vaciar5, estado(_,G3), estado(0,G3)).

% 4. Vaciar garrafa de 3 galones
mov(vaciar3, estado(G5,_), estado(G5,0)).

% 5. Vaciar el contenido de garrafa de 5 en 3

	% Opcion 5.1:
	mov(pasar5a3, estado(G5,G3),estado(0,GT)):- GT is G5 + G3, GT =< 3.

	% Opcion 5.2
	mov(pasar5a3, estado(G5,G3),estado(G5N,3)):- GT is G5 + G3, GT > 3, G5N is GT - 3.

% 6. Vaciar el contenido de garrafa de 3 en 5
	% Opcion 6.1
	mov(pasar3a5, estado(G5,G3),estado(GT,0)):- GT is G5 + G3, GT =< 5.

	% Opcion 6.2
	mov(pasar3a5, estado(G5,G3),estado(5,G3N)):- GT is G5 + G3,  GT > 5, G3N is GT - 5.

	
	
% 3. Crear el camino

% camino(+EstadoIni,+EstadoFin, +Visitados, -Camino)
% es cierto cuando Camino unifica con una lista de movimientos
% para ir desde el Estadoini hasta EstadoFin hasta EstadoFin sin repetir en la lista de Visitados

camino(Ini,Ini,_,[]).

camino(Ini,Fin, Visitados,[Mov|Camino]):-
	mov(Mov,Ini,Temp),
	\+ member(Temp,Visitados),
	camino(Temp, Fin,[Temp|Visitados] ,Camino).
