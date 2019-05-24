% crea_arbol_binario(+ListaEtiquetas, -ArbolBinario)
% es cierto cuando ArbolBinario unifica con un arbol binario
% que contiene todas las etiquetas de ListaEtiquetas


crea_arbol_binario([],nil).
crea_arbol_binario([C|R], a(C,A,B)):-length(R,RL),N is RL div 2 ,length(L1,N),append(L1,L2,R),crea_arbol_binario(L1,A), crea_arbol_binario(L2,B).