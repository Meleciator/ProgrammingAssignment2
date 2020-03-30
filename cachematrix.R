## Put comments here that give an overall description of what your
## functions do


## This function creates an object that can cache its inverse.
## it sets matrix, getsmatrix, sets inverse and gets
## inverse

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y){
    x<<-y
    inv<<-NULL
  }
  get<-function()x
  setinv<-function(inversa)inv<<-inversa
  getinv<-funtion()inv
  list(set=set,get=get,setinv=setinv,getinv=getinv)
}


## This function computes the inverse of the special object
## returned by makeCacheMatrix above. If the inverse was calculated
## before, then the cachesolve will retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv<-x$getinv()
  if(!is.null(inv)){
    message("getting cached data")
    return(inv)
  }
  data <- x$get()
  inv <- solve(data, ...)
  x$setinv(inv)
  inv
  
}
