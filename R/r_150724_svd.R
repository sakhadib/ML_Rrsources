A <- matrix(c(1, 2, 3, 4, 5, 6, 7, 8, 9), nrow=3, ncol=3)

# Singular Value Decomposition
svd_result <- svd(A)

# Singular values

U <- svd_result$u

sigma <- diag(svd_result$d)

Vt <- t(svd_result$v)


# Reconstruct the original matrix

A_reconstructed <- U %*% sigma %*% Vt


# Print all

print("Original matrix")
print(A)

print("Reconstructed matrix")
print(A_reconstructed)

print("U")
print(U)

print("Sigma")
print(sigma)

print("Vt")
print(Vt)