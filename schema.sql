# Create the tables
CREATE TABLE Book(BID CHAR(4), Title VARCHAR(255), Author VARCHAR(255));
CREATE TABLE Reader(RID CHAR(6), Name VARCHAR(255), Age INT);
CREATE TABLE Borrowed(BrID CHAR(8), BID CHAR(4), RID CHAR(6), DateBorrowed datetime, DateReturned datetime);

# Insert into Book table (Information about each book)
INSERT INTO Book VALUES ('0123', 'Frankenstein', 'Mary Shelley');
INSERT INTO Book VALUES ('1230', 'Pride and Prejudice', 'Jane Austen');
INSERT INTO Book VALUES ('2301', 'The Great Gatsby', 'F. Scott Fitzgerald');
INSERT INTO Book VALUES ('3012', 'A Series of Unfortunate Events: The Bad Beginning', 'Lemony Snicket');
INSERT INTO Book VALUES ('3013', 'A Series of Unfortunate Events: The Reptile Room', 'Lemony Snicket');
INSERT INTO Book VALUES ('2302', 'Dracula', 'Bram Stoker');

# Insert into Reader table (Information about each reader)
INSERT INTO Reader VALUES ('012345', 'Sarah Smith', 24);
INSERT INTO Reader VALUES ('234501', 'John Fort', 54);
INSERT INTO Reader VALUES ('345012', 'Laura Smith', 12);
INSERT INTO Reader VALUES ('450123', 'Moss McGill', 17);
INSERT INTO Reader VALUES ('501234', 'Tara White', 45);
INSERT INTO Reader VALUES ('021345', 'James Hamlin', 73);

# Insert into Borrowed table (Information about the books borrowed by the readers)
INSERT INTO Borrowed VALUES ('01234567', '2301', '234501', '2021-12-23 16:23:12', '2022-1-2 13:12:23');
INSERT INTO Borrowed (BrID, BID, RID, DateBorrowed) VALUES ('12345670', '1230', '234501', '2022-11-17 13:04:01');
INSERT INTO Borrowed VALUES ('23456701', '0123', '345012', '2018-04-14 14:12:04', '2018-04-22 9:20:04');
INSERT INTO Borrowed (BrID, BID, RID, DateBorrowed) VALUES ('34567012', '2302', '450123', '2022-06-08 15:12:18');
INSERT INTO Borrowed VALUES ('34567012', '3013', '450123', '2019-05-10 08:56:13', '2019-05-19 14:12:38');
INSERT INTO Borrowed VALUES ('45670123', '2301', '450123', '2021-08-19 09:13:17', '2021-08-20 08:28:10');
INSERT INTO Borrowed VALUES ('56701234', '2302', '501234', '2020-10-10 13:24:10', '2020-10-21 16:15:09');
INSERT INTO Borrowed VALUES ('67012345', '2302', '345012', '2017-03-18 17:13:09', '2017-03-21 14:18:24');
