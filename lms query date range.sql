SELECT * FROM 
BORROWER
INNER JOIN BOOK_LOANS ON BORROWER.CardNo = BOOK_LOANS.CardNo
WHERE DueDate > '2015-10-31'