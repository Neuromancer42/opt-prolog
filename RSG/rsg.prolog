:-table rsg/2.
up(a,e).
up(a,f).
up(f,m).
up(g,n).
up(h,n).
up(i,o).
up(j,o).

flat(g,f).
flat(m,n).
flat(m,o).
flat(p,m).

down(l,f).
down(m,f).
down(g,b).
down(h,c).
down(i,d).
down(p,k).

rsg(X,Y):- flat(X,Y).
rsg(X,Y):- up(X, X1), rsg(X1, Y1), down(Y1, Y).
