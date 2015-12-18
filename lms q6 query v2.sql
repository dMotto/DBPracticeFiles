---- 6. Retrieve the names, addresses, and number of books checked out for all borrowers who have more than five books checked out. ----

SELECT B.Name, B.[Address], SUM(BL.CardNo)as total
FROM BORROWER AS B
INNER JOIN BOOK_LOANS AS BL
ON B.CardNo = BL.CardNo
GROUP BY B.Name, B.Address, BL.CardNo 
ORDER BY BL.CardNo ASC, COUNT(BL.CardNo)

