function [ev, A] = threeDMesh(nx, ny, nz)

nodes = nx * ny * nz;

A = zeros(nodes, nodes);

for i=1:nodes
    for j=1:nodes
        A(i,j) = threeDMeshDistance(i, j, nx, ny);
    end
end

ev = eig(A)