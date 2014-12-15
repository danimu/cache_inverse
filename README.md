cache_inverse
=============

Problem Assignment 2 --- R Programming | Coursera


makeInverse <- function(mat = matrix) {

	inv <- NULL
	
	set <- function(mat.new) {
		mat <<- mat.new
		inv <<- NULL
	}

	get <- function() {
		mat
	}

	setinv <- function(inverse) {
		inv <<- inverse
	}

	getinv <- function() {
		inv
	}

	list(set = set, get = get, setinv = setinv, getinv = getinv)

}



cacheInverse <- function(mat, ...) {
	
	inv <- mat$getinv()

	if (!is.null(inv)) {
		message("getting cached data")
		return(inv)
	}
	A <- mat$get()
	inv <- solve(A)
	mat$setinv(inv)
	inv

}
