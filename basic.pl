padre(pancho, alberto).
padre(pancho, chino).
padre(pancho, paco).
padre(pancho, pablo).
padre(pancho, pedro).
padre(pancho, pitus).
padre(pancho, chayo).
padre(pancho, anne).
padre(pancho, wicho).
padre(pancho, lalo).

padre(alberto, beto).
padre(alberto, vero).

padre(chino, mariam).
padre(chino, esteban).
padre(chino, ana).
padre(chino, sofi).

padre(paco, paquito).
padre(paco, ernesto).

padre(pablo, paula).
padre(pablo, jose).
padre(pablo, ximena).

padre(pedro, regina).
padre(pedro, bernardo).
padre(pedro, rebecca).

padre(wicho, patricio).
padre(wicho, luisa).

padre(lalo, daniela).
padre(lalo, cecilia).

hijo(H, P) :- padre(P, H).
hermano(Her1, Her2) :- padre(P, Her1), padre(P, Her2), Her1 \= Her2.
abuelo(Ab, Nieto) :- padre(Ab, P), padre(P, Nieto).
nieto(Nieto, Ab) :- abuelo(Ab, Nieto).
tio(Tio,Sob) :- hermano(Tio, Padre), padre(Padre, Sob).
sobrino(Sob,Tio) :- tio(Tio, Sob).
primo(Primo1,Primo2) :- padre(P1,Primo1), padre(P2,Primo2), hermano(P1, P2).
