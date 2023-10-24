parent( pam, bob).       % Pam is a parent of Bob
parent( tom, bob).
parent( tom, liz).
parent( bob, ann).
parent( bob, pat).
parent( pat, jim).

female( pam).            % Pam is female
female( liz).
female( ann).
female( pat).
male( jim).
male( tom).              % Tom is male
male( bob).

mother(X,Y):- %3.C
    female(X),parent(X,Y).
child(A,B):- %3.B
    parent(B,A).
grandparent(X,Z):-
    parent(X,Y),
    parent(Y,Z).
sister(X,Y):-
    female(X),
    parent(Z,X),
    parent(Z,Y).
predecesor(X,Y,Z):-

    parent(X,Z),
    ( parent(X,Y) ->true;
    predecesor(Z,Y,W)).
	
% ======lab2==============================================================
happy(X):-
    parent(X,Y).
dwoje(X):-
    parent(X,Y),
    sister(Z,Y).


wnuk(X,Y):-
    parent(Z,Y),parent(X,Z).
ciotka(X,Y):-
    parent(Z,Y),
    sister(X,Z).
nastepca(X,Y):-
    predecesor(Y,X,Z).
%=======================================================
zatrudnienie(anna, nowak, zelmer, duza_firma, 2000).
zatrudnienie(annsasaa, saasasnowak, zelmer, duza_firma, 200).
szczenscie(X,Y):-
    zatrudnienie(X,Y,_,mala_firma,C),C>2500.
%zatrudnienie(_, _, _, duza_firma, C),C<1500.


%============================
rower(marek).
rower(ala).
szycie(ala).
wiek(ala,20).
wiek(marek,21).
starszy(X,Y):-
    wiek(X,Z),wiek(Y,W),Z>W.
mlodszy(X,Y):-
    wiek(X,Z),wiek(Y,W),Z<W.
%============================
osoba(imie, imie_ojca, imie_matki, plec, wiek).
osoba(filip, grzegorz, ewa, m, 23).
osoba(ada, grzegorz, ewa, k, 29).
osoba(grzegorz, stanis³aw, marysia, m, 55).
osoba(ewa, franek, anna, k, 42).
male(filip).
male(grzegorz).
female(ada).
female(ewa).


rodzenstwo(X,Y):-
    osoba(X,Z,W,O,P),osoba(Y,Z,W,K,J).
bracia(X,Y):-
    osoba(X,Z,W,O,P),osoba(Y,Z,W,O,J),male(X).
siostry(X,Y):-
    osoba(X,Z,W,O,P),osoba(Y,Z,W,O,J),female(X).
brat(X,Y):-
    osoba(X,Z,W,O,P),osoba(Y,Z,W,K,J),male(X).
siostra(X,Y):-
    osoba(X,Z,W,O,P),osoba(Y,Z,W,K,J),female(X).
rodzic(X,Y):-
   osoba(X,Z,W,O,P),osoba(Y,X,W,K,J).
dziecko(X,Y):-
   rodzic(Y,X).
