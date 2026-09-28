<<<<<<< HEAD
A <- matrix(1:100, nrow = 10)
B <- matrix(1:1000, nrow = 10)

# Check dimensions
dim(A)
dim(B)

# Matrix A
invA <- tryCatch(solve(A), error = function(e) e)
detA <- tryCatch(det(A), error = function(e) e)

# Matrix B
invB <- tryCatch(solve(B), error = function(e) e)
detB <- tryCatch(det(B), error = function(e) e)

# View results
invA
detA
invB
detB
=======
A <- matrix(1:100, nrow = 10)
B <- matrix(1:1000, nrow = 10)

# Check dimensions
dim(A)
dim(B)

# Matrix A
invA <- tryCatch(solve(A), error = function(e) e)
detA <- tryCatch(det(A), error = function(e) e)

# Matrix B
invB <- tryCatch(solve(B), error = function(e) e)
detB <- tryCatch(det(B), error = function(e) e)

# View results
invA
detA
invB
detB
>>>>>>> 8efc90cd7b355b3d05a96cb3ce121c5744ca8e49
