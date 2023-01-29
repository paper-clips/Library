# Return all of the books written by Lemony Snicket
SELECT * FROM Book WHERE Author = 'Lemony Snicket';

# Return all the reader names with Smith in their name
SELECT Name FROM Reader WHERE Name LIKE '%Smith%';

# Return the reader names and which books they've read, they're ordered by the reader names
SELECT Name, Title FROM Borrowed b1 INNER JOIN Book b2 ON b1.BID=b2.BID INNER JOIN Reader r ON b1.RID=r.RID ORDER BY Name;

# Print all of the book titles that have not been read by anyone
SELECT b2.RID, Title FROM Book b1 LEFT JOIN Borrowed b2 ON b1.BID=b2.BID WHERE b2.RID IS NULL;

# Return the names of readers who haven't read any books or haven't returned a book yet
SELECT Name, b.BID, DateReturned FROM Borrowed b RIGHT JOIN Reader r on b.RID=r.RID WHERE b.BID IS NULL OR DateReturned IS NULL;

# Return the readers that are younger than 18 and older than 50
SELECT Name, Age FROM Reader WHERE Age < 18 UNION SELECT Name, Age FROM Reader WHERE Age > 50;

# Return the names of the readers and the number of books they've read, and ordered by the most books read
SELECT Name, COUNT(BID) AS NumBooksRead FROM Borrowed b RIGHT JOIN Reader r ON b.RID=r.RID GROUP BY Name ORDER BY COUNT(BID) DESC;

# Return the book that has been borrowed the second most
SELECT Title FROM Book b1 JOIN Borrowed b2 ON b1.BID=b2.BID GROUP BY Title ORDER BY COUNT(b1.BID) DESC LIMIT 1 OFFSET 1;
