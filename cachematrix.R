##This complete Code takes matrix as input and gives its inverse as output

## This part of the code stores matrix in cache
 
makeCacheMatrix <- function(x = matrix()) { 
  m <- NULL
  set <- function(y) {
      x <<- y
     m <<- NULL
       }
  get <- function() x
  setsolve <- function(solve) m <<- solve
 getsolve <- function() m
 list(set = set, get = get, setsolve = setsolve, getsolve = getsolve)
}



## This function gives inverse of matrix which is dstored in cache

cacheSolve <- function(x, ...) {
  m <- x$getsolve()
  if(!is.null(m)) {
    message("getting inverse of matrix")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setsolve(m)
  m
}
