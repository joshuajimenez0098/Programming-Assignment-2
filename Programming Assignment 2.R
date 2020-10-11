# Make Cache Matrix
makeCacheMatrix <- function(MTX = matrix()) {
  invMTX <- NULL
  set <- function(x) {
    MTX <<- x
    invMTX <<- NULL
  }
  get <- function() MTX
  setInverse <- function(inverse) inv <<- inverse
  getInverse <- function() invMTX
  list(set = set,
       get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}

# Make Matrix
Matx<-matrix(c(2,8,2,3),nrow=2) #matriz ejemplo
Matxy<-makeCacheMatrix(Matx)
Matxy

# Cache Solver
cacheSolve <- function(MTX, ...) {
  inv <- MTX$getInverse()
  if (!is.null(inv)) {
    message("getting cached data")
    return(invM)
  }
  matx <- MTX$get()
  invMTX <- solve(matx, ...)
  MTX$setInverse(invMTX)
  invMTX
}

# Execution 
cacheSolve(Matxy)

# Validation
solve(Matx)
