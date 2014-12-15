##Programming Assignment 2

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

#B <- matrix(c(3,5,1,12,1,15,2,0.6,6,2,8,3,13,20,6,9), nrow=4, ncol=4)
#C <- matrix(c(1,1,7,5,3,8,7,1,5,22,28,33,1,15,3,3), nrow=4, ncol=4)

#Bmat <- makeInverse(B)
#Cmat <- makeInverse(C)
#cacheInverse(Bmat)
#cacheInverse(Cmat)

#cacheInverse(Bmat) --- should display message
#cacheInverse(Cmat) --- should display message