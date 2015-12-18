----3. Retrieve the names of all borrowers who do not have any books checked out.----

SELECT * FROM 
BORROWER
INNER JOIN BOOK_LOANS ON BORROWER.CardNo = BOOK_LOANS.CardNo
WHERE DueDate = NULL