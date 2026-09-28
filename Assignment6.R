A <- matrix(c(2, 0, 1, 3), ncol = 2)
B <- matrix(c(5, 2, 4, -1), ncol = 2)

A + B
A-B

D <- diag(c(4, 1, 2, 3))
D

e <- cbind(
  c(3, 2, 2, 2, 2),
  rbind(c(1, 1, 1, 1), diag(3, 4))
)

e
