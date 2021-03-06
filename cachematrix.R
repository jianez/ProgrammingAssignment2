## R Programming Coursera Exercise
## Programming Assignment 2 Week 3

## This function creates a matrix object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
    i <- NULL
  set <- function(y) {
          x <<- y
          i <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) i <<- inverse
  getinverse <- function() i
  list(set = set,
       get = get,
       setinverse = setinverse,
       getinverse = getinverse)

}


## Return a inverse matrix of "x"

cacheSolve <- function(x, ...) {

  i <- x$getinverse()
  if (!is.null(i)) {
          message("Cached matrix")
          return(i)
  }
  data <- x$get()
  i <- solve(data, ...)
  x$setinverse(i)
  i
}


