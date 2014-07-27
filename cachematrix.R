## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    ## This function created a object of the matrix, 
	## The function take a squared matrix as input
	## returns a list of the set, get, setInverse, getInverse actions
	## According to OOP, the funciton keep the x and inv as private function
    ## Four public function as set,get, setInverse and getInverse. 
    ## set function allows user to provide the input of the matrix
	## get function allows user to get the matrix
	## setInverse stores the inverse value that has been calculated 
	## getInverse returns the inverse that is stored.
	inv <- NULL
	set <- function(givenMatrix) {
		x <<- givenMatrix
		inv <<- NULL
	}
	get <- function() x
	setInverse <- function(inverse) inv <<- inverse
	getInverse <- function() inv
	
	## This is the return statement of this function 
	list(set = set, get = get, setInverse = setInverse, 
		 getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
	inv <- x$getInverse()
	if (!is.null(inv)) {
		message("getting cached data")
		return(inv)
	}
	data <- x$get()
	inv <- solve(data,...)
	x$setInverse(inv)
	inv
}
