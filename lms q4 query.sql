---- 4. For each book that is loaned out from the "Sharpstown" branch and whose DueDate is today,retrieve the book title, the borrower's name, and the borrower's address.---


SELECT BOOK.Title, BOR.Name, BOR.[Address]
FROM 
BOOK INNER JOIN BOOK_COPIES AS BC ON BOOK.BookId = BC.BookId
INNER JOIN LIBRARY_BRANCH AS LB ON BC.BranchId = LB.Branch_Id
INNER JOIN BOOK_LOANS AS BL ON BL.BranchId = BC.BranchId
INNER JOIN BORROWER AS BOR ON BOR.CardNo = BL.CardNo
WHERE BL.DueDate = '2015-11-20' AND LB.BranchName = 'Sharpstown'