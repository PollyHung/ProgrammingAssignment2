# Week 3 assignment: Cacheing the inverse of a matrix 

# This is the first function, it creates a special "matrix" object that 
# can cache its inverse °꒰๑'ꀾ'๑꒱°
makeCacheMatrix <- function (x = matrix()) {
  m <- NULL
  set <- function (y) {
    x <<- y
    m <<- NULL
  }
  get <- function()x
  setInverse <- function(Inverse) m<<- Inverse
  getInverse <- function() m
  list (set = set, get = get,
        setInverse = setInverse,
        getInverse = getInverse)
} 

# This is the second function, it computes the inverse of the special "matrix"
# returned by makeCacheMatrix. If the inverse has already been calculated, 
# then the cacheInverse should retrieve the inverse from the cache（ฅ՞•ﻌ•՞ฅ）
cacheInverse <- function(x, ...){
  m <- x$getInverse()
  if(!is.null(m)){
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- Inverse(data, ...)
  x$setInverse(m)
  m
}b

