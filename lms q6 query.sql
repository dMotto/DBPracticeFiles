---- 6. Retrieve the names, addresses, and number of books checked out for all borrowers who have more than five books checked out. ----

SELECT B.Name, B.Address, COUNT(BL.CardNo)
FROM BORROWER AS B
INNER JOIN BOOK_LOANS AS BL
ON B.CardNo = BL.CardNo
GROUP BY BL.CardNo
WHERE COUNT(BL.CardNo) > 5
