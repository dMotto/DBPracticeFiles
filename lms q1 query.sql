----1. How many copies of the book titled The Lost Tribe are owned by the library branch whose name is "Sharpstown"?----

SELECT * FROM 
BOOK INNER JOIN BOOK_COPIES ON BOOK.BookId = BOOK_COPIES.BookId
INNER JOIN LIBRARY_BRANCH ON BOOK_COPIES.BranchId = LIBRARY_BRANCH.Branch_Id
WHERE BOOK.BookId = 1 AND LIBRARY_BRANCH.BranchName = 'Sharpstown'