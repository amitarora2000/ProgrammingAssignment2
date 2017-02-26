## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

#find the inverse of the matrix
makeCacheMatrix <- function(x = matrix()) {
        
        inverse_m <- NULL
  set <- function(y) {
    x <<- y
    inverse_m <<- NULL
  }
  get <- function() x
  setinverse <- function(solve) inverse_m <<- solve
  getinverse <- function() inverse_m
  list(set = set, 
       get = get,
       setinverse = setinverse,
       getinverse = getinverse)

}


## Write a short comment describing this function

# first check if the inverse of the matrix exists
#if not, calculate the invese          
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        
        matrix <- x$getinverse()
  if(!is.null(matrix)) {
    message("getting cached data")
    return(matrix)
  }
  data <- x$get()
  matrix <- solve(data, ...)
  x$setinverse(m)
  matrix
}
