function torusDistanceValue = twoDTorusDistance(i, j, nx, ny)
x1 = twoDx(i-1, nx);
y1 = twoDy(i-1, x1, nx);
x2 = twoDx(j-1, nx);
y2 = twoDy(j-1, x2, nx);

minX = min(abs(x1 - x2), nx - abs(x1 - x2));
minY = min(abs(y1 - y2), ny - abs(y1 - y2));

torusDistanceValue = minX + minY;