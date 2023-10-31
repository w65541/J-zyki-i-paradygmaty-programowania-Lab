rzecz(pies).
rzecz(kot).
czas(goni).
przy(du�y).
przy(ma�y).
weryfikacja(X,Y,Z):-
    (rzecz(X),czas(Y),rzecz(Z)).
weryfikacja(A,B,C,D,E):-
    przy(A),rzecz(B),czas(C),przy(D),rzecz(E).
d�ugo��(kontener1, 20).
szeroko��(kontener1,30).
wysoko��(kontener1, 15).
d�ugo��(kontener2, 25).
szeroko��(kontener2,9).
wysoko��(kontener2, 10).

obj�to��(K):-
    d�ugo��(K,X),
    szeroko��(K,Y),
    wysoko��(K,H),
    W is X*Y*H,
    write(W).

nwd(X,Y):-
   (    X=:=Y->write(X);
   (   X>Y->Z is X-Y,nwd(Y,Z);
   Z is Y-X,nwd(X,Z))).

granica(1,2).
granica(1,3).
granica(1,4).
granica(1,5).
granica(2,1).
granica(2,3).
granica(2,4).
granica(3,1).
granica(3,2).
granica(3,4).
granica(4,1).
granica(4,2).
granica(4,3).
granica(4,5).
granica(5,1).
granica(5,4).
kolor(2,czerwony).
sprkolor(R,K):-
    granica(R,S),
    kolor(S,K)->false;true.
ustawkolor(A,B,C,D):-
   K is [0,0,0,0,0],
   granica(R,_).
   rkolor(R,K),
    write(K).
rkolor(R,K):-
    granica(R,S),
    X is 0,
    nth1(S,K,E),
    X<E->X is E+1;.

