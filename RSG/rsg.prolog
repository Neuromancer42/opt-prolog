:-table rsg/2.
rsg(X,Y):- flat(X,Y).
rsg(X,Y):- up(X, X1), rsg(Y1,X1), down(Y1, Y).
