## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setmatrix <- function(matrix){
    m <<- matrix
  }
  getmatrix <- function() m
  list(set= set, get = get, setmatrix = setmatrix, getmatrix = getmatrix)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  ##fetching inverse of matrix if present
  m <- x$getmatrix()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  ##inverting the matrix if it is not present before
  m <- solve(data, ...)
  x$setmatrix(m)
  m
}

