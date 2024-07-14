import numpy as np

# 1. Create a matrix
A = np.array([[1, 2, 3], [4, 5, 6], [7, 8, 9]])

# 2. Perform SVD
U, S, V = np.linalg.svd(A)

V_transpose = V.T

# 3. Reconstruct the original matrix
A_reconstructed = np.dot(U, np.dot(np.diag(S), V))


# 4. Print the original and reconstructed matrices
print("Original matrix:")
print(A)

print("Reconstructed matrix:")
print(A_reconstructed)

print("U")
print(U)

print("Sigma")
print(S)

print("Vt")
print(V_transpose)
