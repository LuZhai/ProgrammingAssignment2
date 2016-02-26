## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  s <- NULL
  ## set the value of the matrix
  set <- function(y){
    x <<- y
    s <<- NULL
  }
  ## get the matrix to possible invert 
  get <- function() x
  ## set the inverted matrix in the cache
  setsolve <- function(solve) s <<- solve
  ## get the inverted matrix in s 
  getsolve <- function() s
  ## result will be a list including four functions
  list(set = set, 
       get = get,
       setsolve = setsolve,
       getsolve = getsolve)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
                ## Return a matrix that is the inverse of 'x'
  ## test if in the cache
  s <- x$getsolve()
  if(!is.null(s)) {
    message("getting cached data")
    return(s)
  }
  data <- x$get()
  ## invert matix
  s <- solve(data, ...)
  x$setsolve(s)
  s
}
