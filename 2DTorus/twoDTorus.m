function [ev, A] = twoDTorus(nx, ny)

nodes = nx * ny;

A = zeros(nodes, nodes);

for i=1:nodes
    for j=1:nodes
        A(i,j) = twoDTorusDistance(i, j, nx, ny);
    end
end

ev = eig(A)