

iguales(nil,nil).
iguales(t(A1,L1,R1),t(A2,L2,R2)):- A1 = A2, iguales(L1,L2),iguales(R1,R2).