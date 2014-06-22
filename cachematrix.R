## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
 myInvMatrix <- NULL
  set <- function(y) {
     x <<- y
     myInvMatrix <<- NULL
  }
  get <-function(){
     x
   }
   setMatrix <- function(solveMat= matrix()){
    myInvMatrix <<- solveMat
   }
   getMatrix <- function(){
    myInvMatrix 
   }
   return(list( set= set, get=get,setMatrix=setMatrix,getMatrix=getMatrix))
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
   mat1 <- x$getMatrix()
   if (!is.null(mat1)){
    message(" Returning cached value ...")
    return(mat1)
   }
   mat1 <- x$get()
   invmat1 <- solve(mat1)
   x$setMatrix(invmat1)
   return(invmat1)
}
