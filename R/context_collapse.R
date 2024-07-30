# R functions for cosine similarity
# Author: Marcos Díaz-Gay
# Date: Jul 29, 2024

#' @title collapse_288_to_96
#' 
#' @description 
#'
#' @param 
#' 
#' @return
#' 
#' @export collapse_288_to_96
#'
#' @examples
collapse_288_to_96 <- function(x) {
    x <- x %>%
        group_by(substr(rownames(x), 3, 9)) %>%
        summarise_all(sum) %>%
        rename(MutationType=`substr(rownames(x), 3, 9)`)
    x = data.frame(x)
    rownames(x) = x$MutationType
    x = x[,-1]
}

#' @title collapse_1536_to_96
#' 
#' @description 
#'
#' @param 
#' 
#' @return
#' 
#' @export collapse_1536_to_96
#'
#' @examples
collapse_1536_to_96 <- function(x) {
    x <- x %>%
        group_by(substr(rownames(x), 2, 8)) %>%
        summarise_all(sum) %>%
        rename(MutationType=`substr(rownames(x), 2, 8)`)
    x = data.frame(x)
    rownames(x) = x$MutationType
    x = x[,-1]
}