## This function creates a matrix of class type list and
## also stores a value for the inverse of the matrix.
## Included are functions to: set and get the value of the matrix;
## set and get the inverse of the matrix;
makeCacheMatrix <- function(x = matrix())
{
  i <- NULL
  set <- function(y)
  {
    x <<- y
    i <<- NULL
  }
  g <- function() x
  setInv <- function(inv) i <<- inv
  getInv <- function() i
  list(set = set, get = get,
       setInv = setInv,
       getInv = getInv)
}


## This function calculates the inverse of the matrix as created by the
## makeCacheMatrix function. Before calculating the inverse of the
## matrix it checks to see if it has already been calculated by using
## the getInv function, if there is no value it calculates it and
## stores it using the setInv function to save further computations.

cacheSolve <- function(x, ...) 
{
  i <- x$getInv()
  if(!is.null(i))
  {
    message("getting the cache data")
    return(i)
  }
  m <- x$get()
  i <- solve(m, ...)
  x$setInv(i)s
  i
}
