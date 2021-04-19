#2020211496 Han,Joo-hyeong
mytranspose <- function(x){
  # matrix
  if(is.null(x)==FALSE){
    l <- x
    x <- as.matrix(x)
    y <- matrix(1, nrow = ncol(x), ncol = nrow(x))
    for(i in 0:nrow(x)){
      for(j in 0:ncol(x)){
        y[j,i] <- x[i,j]
      }
    }
  # vector
  if(is.vector(l)==TRUE)
      return(cbind(y))
  # data.frame
  else if(is.data.frame(l)==TRUE)
      return(as.data.frame(y))
  else
      return(y)
  }
    # null
  else
    return(x)
}
