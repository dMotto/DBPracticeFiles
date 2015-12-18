---- 5. For each library branch, retrieve the branch name and the total number of books loaned out from that branch.----

SELECT LB.BranchName, SUM(LB.Branch_Id)as total
FROM LIBRARY_BRANCH AS LB 
INNER JOIN BOOK_LOANS AS BL 
ON LB.Branch_Id = BL.BranchId
GROUP BY LB.BranchName
ORDER BY LB.BranchName ASC, COUNT(LB.Branch_Id)



