

pack([],[]).
pack([A],[[A]]).
pack([A1,A1|Ab],[[A1|R1]|R]):- pack([A1|Ab], [R1|R]).
pack([A1,A2|Ab],[[A1]|R]):- A1 \= Ab, pack([A2|Ab],R).



% n
% [a,a,a,b,b]
% [[a,a,a][b,b]]

% n-1
% [a,a,b,b]
% [[a,a][b,b]]


% n
% [c,a,a,a,b,b]
% [[c],[a,a,a][b,b]]

% n-1
% [a,a,a,b,b]
% [[a,a,a][b,b]]