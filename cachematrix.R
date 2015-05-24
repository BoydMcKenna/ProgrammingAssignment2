## Code for caching computations for a vector to eliminate recomputation

## Function to cache the inverse of a matrix to eliminate 

makeCacheMatrix <- function(x = matrix()) {

}

## Creates vector of four values sets the value of vector, get the value of vector, set value of mean and get value of mean

makeVector <- function(x = numeric()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setmean <- function(mean) m <<- mean
  getmean <- function() m
  list(set = set, get = get,
       setmean = setmean,
       getmean = getmean)
}

## Calculates the meand of the data and sets the value in cache

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
cachemean <- function(x, ...) {
  m <- x$getmean()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- mean(data, ...)
  x$setmean(m)
  m
}

