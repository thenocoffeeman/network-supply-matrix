function meshDistanceValue = threeDMeshDistance(i, j , nx , ny)
x1 = twoDx(i-1, nx);
y1 = threeDy(i-1, x1, nx, ny);
z1 = threeDz(i-1, x1, y1, nx, ny);

x2 = twoDx(j-1, nx);
y2 = threeDy(j-1, x2, nx, ny);
z2 = threeDz(j-1, x2, y2, nx, ny);

meshDistanceValue = abs(x1-x2) + abs(y1-y2) + abs(z1-z2);