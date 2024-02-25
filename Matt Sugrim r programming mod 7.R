#Create S3

S3 <- list(bookType  = "Chainsaw Man",
           genre = "Action",
           author = "Tatsuki Fujimoto",
           ISBN = "978-1974709939")

class(S3) <- "Book"
S3

attr(S3 ,"class") <- "Book"
Book <- function(a,b,c,d)
{
  value <- list(bookType = a,
                genre = b,
                author = c,
                ISBN = d)
  attr(value, "class") <- "Book"
  value
}
S3.1 <- Book("Chainsaw Man", "Action", "Tatsuki Fujimoto", "978-1974709939")
S3.1

#Create S4
setClass("Book", slots = list(bookType = "character",
                              genre = "character",
                              author = "character",
                              ISBN = "character"))
S4 <- new("Book", bookType  = "Chainsaw Man",
          genre = "Action",
          author = "Tatsuki Fujimoto",
          ISBN = "978-1974709939")
S4
isS4(S4)
isS4(S3)

