% Trees representation
% 1º nil is a tree
% 2º t(L,Left,Right),Left and Right are trees.


% num_nodes(+tree,-num)
% it is true if Num, unifiy with the number 
% of nodes in tree

% Induction
% 1º p(n0)
% 2º p(n-1) -> p(n)
%    p(N): N2 is N-1, p(N2).


num_nodes(nil,0).
num_nodes(t(_,L,R), RT):-
		num_nodes(L,RL),
		num_nodes(R,RR),
		RT is RL + RR + 1.
		
		
t(9,t(5,t(2,nil,nil),t(6,nil,nil)),t(12,t(10,nil,nil),t(14,nil,nil))).