:-table rsg/2.
rsg(X,Y):- var(X),var(Y),rsg(bf,X,Y).
rsg(X,Y):- var(X),nonvar(Y),rsg(fb,X,Y).
rsg(X,Y):- nonvar(X),var(Y),rsg(bf,X,Y).
rsg(X,Y):- nonvar(X),nonvar(Y),rsg(bf,X,Y).
rsg(bf,X,Y):- flat(X,Y).
rsg(fb,X,Y):- flat(X,Y).
rsg(bf,X,Y):- up(X,X1),rsg(fb,Y1,X1),down(Y1,Y).
rsg(fb,X,Y):- down(Y1,Y),rsg(bf,Y1,X1),up(X,X1).

