pisz_listê([G|O]):-
    write(G),nl,
    pisz_listê(O).
pisz_listê([]):-!.

nale¿y(X,[G|O]):-
    X=:=G->true;
    nale¿y(X,O).
nale¿y(X,[]):-false.

d³ugoœæ([G|O],W):-
    d³ugoœæ(O,W1),
    W is W1+1.
d³ugoœæ([],W):-W is 0.

³¹cz([A|B],L,N):-
    ³¹cz(B,L,[N|A]).
³¹cz([],[A|B],N):-
    ³¹cz([],B,[N|A]).
³¹cz([],[],N):-write(N).

lacz([],L,L).
lacz([G|O],L2,[G|W]):-
    lacz(O,L2,W).





dodaj(X,L,[X|L]).


usuñ(X,[X|O],N):-
    lacz(N,O,W),write(W).

usuñ(X,[G|O],N):-
    lacz(N,[G],W2),
    usuñ(X,O,W2).

usuñ(X,[],N):-false.

ostatni([X|[]],X).
ostatni([G|O],W):-ostatni(O,W).
