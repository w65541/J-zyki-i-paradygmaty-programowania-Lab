lot(a2324, warszawa, krakow, 1800, 1845, day(1, 1, 1, 1, 1, 1, 1)).
lot(lf224, warszawa, rzeszow, 1850, 1930, day(1, 1, 1, 1, 1, 1, 1)).
lot(m232, warszawa, berlin, 1400, 1525, day(1, 0, 1, 1, 0, 0, 1)).
lot(a231, warszawa, monachium, 1420, 1600, dni(0, 1, 1, 0, 1, 1, 1)).
lot(l324, warszawa, londyn, 1330, 1600, day(1, 1, 1, 1, 1, 1, 1)).
lot(a2324, krakow, warszawa, 700, 745, day(1, 1, 1, 1, 1, 1, 1)).
lot(lf224, rzeszow, warszawa, 850, 940, day(1, 1, 1, 1, 1, 1, 1)).
lot(m232, berlin, warszawa, 1600, 1725, day(1, 0, 1, 1, 0, 0, 1)).
lot(a231, monachium, warszawa, 1720, 1850, day(0, 1, 1, 0, 1, 1, 1)).
lot(l324, londyn, warszawa, 1720, 1940, day(1, 1, 1, 1, 1, 1, 1)).
day(1, 1, 1, 1, 1, 1, 1).
wtorek(day(_,X,_,_,_,_,_)):-
X=:=1.
%lot(X,_,_,_,_,Y),wtorek(Y).
%lot(_,rzeszow,warszawa,X,Y,_).
%lot(a2324,X,Y,_,_,_).
%lot(_,berlin,warszawa,_,_,X).
%lot(_,_,warszawa,_,X,_),((X>800,X<1000);(X>1800)).
