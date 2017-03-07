:-table rsg/2.
rsg(bf,X,Y):- flat(X,Y).
rsg(fb,X,Y):- flat(X,Y).
rsg(bf,X,Y):- up(X,X1),rsg(fb,Y1,X1),down(Y1,Y).
rsg(fb,X,Y):- down(Y1,Y),rsg(bf,Y1,X1),up(X,X1).

