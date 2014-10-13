function [ev, A] = fullyConnected(nodes)

A = zeros(nodes, nodes);

for i=1:nodes
    for j=1:nodes
        A(i,j) = Distance(i, j);
    end
end

ev = eig(A)