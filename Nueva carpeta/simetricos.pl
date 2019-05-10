

simetricos(nil,nil).
simetricos(t(A1,L1,R1),t(A2,L2,R2)):- A1 = A2, simetricos(L1,R2),simetricos(L2,R1).




t(9,t(5,t(2,nil,nil),t(6,nil,nil)),t(12,t(10,nil,nil),t(14,nil,nil)))
t(9,t(12,t(14,nil,nil),t(10,nil,nil)),t(5,t(6,nil,nil),t(2,nil,nil)))