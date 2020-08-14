## Put comments here that give an overall description of what your
## functions do

## Coursera Programming Assignment 2: Lexical Scoping (Rod)
## Write a short comment describing this function
# input x is set as a matrix and solved value 's' is set as NULL

makeCacheMatrix <- function(x = matrix()) {
  s <- NULL
  set <- function(y) {
    x <<- y
    s <<- NULL
  }
  get <- function() x
  set.solve <- function(solve) s <<- solve
  get.solve <- function() s
  list(set = set, get = get,
       set.solve = set.solve,
       get.solve = get.solve)
}


## Write a short comment describing this function
# Returning a matrix that is the inverse of 'x'

cacheSolve <- function(x, ...) {
  s <- x$get.solve()
  if(!is.null(s)) {
    message("get inversed matrix")
    return(s)
  }
  data <- x$get()
  s <- solve(data, ...)
  x$set.solve(s)
  s
} 
