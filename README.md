network-supply-matrix
=====================

Description
The problem is an introduction of network supply matrix which represents the distance value between two processors. In other words, it represents the cost needed to establish the communication between nodes.

Codes:
Files in FullyConnectedSystem folder: Question 1
Command: fullyConnected(#node)
Files in 2DTorus: Question 2 and 3
Command: twoDTorus(#nx, #ny)
Files in 3DMesh: Question 4 and 5
Command: threeDMesh(#nx,#ny,#nz)

Analysis
-	For a fully connected system, there are a connection between each nodes. Therefore, the distance from one node to the others is 1 if two nodes have different ID and 0 otherwise.
-	In 2D torus, the ID of each node is define by ID = x + y * Nx. By deriving the formula, we can calculate the value of x and y.
x = ID % Nx
y = (ID – x) / Nx
The distance is calculated by:
Distance = min(|xi-xj|, Nx - |xi-xj|) + min(|yi-yj|,|Ny-|yi-yj|). Where Nx and Ny is the number of column and row in the supply matrix.
-	In 3D mesh, ID = x + y * Nx + z * Nx * Ny
x = ID % Nx
y = ((ID-x)/Nx) % Ny
z = (ID – x – y *Nx)/(Nx*Ny)
Distance = |xi – xj| + |yi – yj| + |zi – zj|
-	The eigen value of the matrix is calculated by the built-in function in Mathlab.
e.g. eigenvalue = eig(A). where A is the supply matrix

Comment
An eigen vector is a vector that is scaled by a linear transformation. However, the vector will never move. Eigenvalues are multipliers which represent how much stretching has been done to the eigenvector. In other words, it describes how the eigenvector has been scaled up by. However, there is yet a good answer how exactly eigenvalue mean in term of supercomputer. According to Prof. Deng, this is still an on-going research topic.

