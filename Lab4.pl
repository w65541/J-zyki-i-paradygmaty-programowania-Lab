pisz_list�([G|O]):-
    write(G),nl,
    pisz_list�(O).
pisz_list�([]):-!.

nale�y(X,[G|O]):-
    X=:=G->true;
    nale�y(X,O).
nale�y(X,[]):-false.

d�ugo��([G|O],W):-
    d�ugo��(O,W1),
    W is W1+1.
d�ugo��([],W):-W is 0.

��cz([A|B],L,N):-
    ��cz(B,L,[N|A]).
��cz([],[A|B],N):-
    ��cz([],B,[N|A]).
��cz([],[],N):-write(N).

lacz([],L,L).
lacz([G|O],L2,[G|W]):-
    lacz(O,L2,W).


dodaj(X,L,[X|L]).


usu�(X,[X|O],N):-
    lacz(N,O,W),write(W).

usu�(X,[G|O],N):-
    lacz(N,[G],W2),
    usu�(X,O,W2).

usu�(X,[],N):-false.

ostatni([X|[]],X).
ostatni([G|O],W):-ostatni(O,W).

poczatek([X|[]],[X|O]):-
    true.
poczatek([X|O1],[X|O2]):-
    poczatek(O1,O2).
poczatek([],[G2|O2]):-false.

dek(X,n):-integer(X).
dek(X,a):-atom(X).
dek(X,.).
dek(X,l):-atom(X)->false;true.
dek(X,*).
dopasuj([A|B],[X|Y],W):-
   dek(A,X)->lacz(W,[A],W1),dopasuj(B,Y,W1);
   dopasuj(B,[X|Y],W).
dopasuj([A|B],[X|[]],W):-
   dek(A,X)->lacz(W,[A],W1),write(W1);
    dopasuj(B,[X|[]],W) .
