# R functions for cosine similarity
# Author: Marcos Díaz-Gay
# Date: Dec 14, 2023

#' @title cos_sim
#' 
#' @description 
#'
#' @param 
#' 
#' @return
#' 
#' @export cosmic_fit
#'
#' @examples
cos_sim <- function(x, y) {
  res <- x %*% y / (sqrt(x %*% x) * sqrt(y %*% y))
  # coerce matrix to numeric
  res <- as.numeric(res)
  return(res)
}

#' @title cos_sim_matrix
#' 
#' @description 
#'
#' @param 
#' 
#' @return
#' 
#' @export cosmic_fit
#'
#' @examples
cos_sim_matrix <- function(mut_matrix1, mut_matrix2) {
  n_samples1 <- ncol(mut_matrix1)
  n_samples2 <- ncol(mut_matrix2)
  res_matrix <- matrix(nrow = n_samples1, ncol = n_samples2)

  for (s in seq_len(n_samples1))
  {
    signal1 <- mut_matrix1[, s]
    cos_sim_vector <- c()
    for (i in seq_len(n_samples2))
    {
      signal2 <- mut_matrix2[, i]
      cos_sim_vector[i] <- cos_sim(signal1, signal2)
    }
    res_matrix[s, ] <- cos_sim_vector
  }
  rownames(res_matrix) <- colnames(mut_matrix1)
  colnames(res_matrix) <- colnames(mut_matrix2)

  return(res_matrix)
}
