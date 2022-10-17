#' @title
#' Paste of vector elements
#'
#' @description
#' `myPaste` returns the sum of all the values
#' present in its arguments.
#'
#' @details
#' This is a generic function: methods can be
#' defined for it directly or via the
#' [Summary()] group generic. For this to work
#' properly, the arguments `...` should be
#' unnamed, and dispatch is on the first
#' argument.
#'
#' @param arg1 character A character string.
#' @param arg2 numeric A numerical value to append
#' to the character string provided in \code{arg1}.
#'
#' @returns character A string with \code{arg1} and
#' \code{arg2} pasted together
#'
#' @importFrom glue glue
#'
#' @export
#'
#' @examples
#' myPaste("Jacques' cat is ", 3)

myPaste <- function(arg1, arg2) {

    ## Internal checkups
    if (!is.character(arg1) | !is.numeric(arg2)) {
        stop("There has been an error. Aborting now.")
    }

    ## Internal processing steps
    res <- glue::glue(arg1, arg2)
    res <- as.character(res)

    ## Internal checkups
    return(res)

}

