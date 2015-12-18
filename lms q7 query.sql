--- 7. For each book authored (or co-authored) by "Stephen King", retrieve the title and the number of copies owned by the library branch whose name is "Central"---
SELECT BA.AuthorName, B.Title, LB.BranchName
FROM BOOK_AUTHORS AS BA 
INNER JOIN BOOK AS B
ON B.BookId = BA.BookId
INNER JOIN dbo.BOOK_COPIES AS BkCop
ON BkCop.BookId = B.BookId
INNER JOIN dbo.LIBRARY_BRANCH AS LB
ON LB.Branch_Id = BkCop.BranchId
WHERE BA.AuthorName = 'King, Stephen' and LB.BranchName = 'Central'


