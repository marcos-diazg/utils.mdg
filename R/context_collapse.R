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
}