create database Bankbank;
use Bankbank;
CREATE TABLE customerr 
   (
       custid VARCHAR(6),
       fname VARCHAR(30),
       bname VARCHAR(30),
       ltname VARCHAR(30),
       city VARCHAR(15),
       mobileno VARCHAR(10),
       occupation VARCHAR(10),
       dob DATE,
      CONSTRAINT customerr_custid_pk PRIMARY KEY(custid)   
   );
   
   CREATE TABLE branch
   (
    bid VARCHAR(6),
    bname VARCHAR(30),
    bcity VARCHAR(30),
    CONSTRAINT branch_bid_pk PRIMARY KEY(bid) 
   );
   
   INSERT INTO customerr VALUES('C00001','Ramesh','Chandra','Sharma','Delhi','9543198345','Service','1976-12-06');
   INSERT INTO customerr VALUES('C00003','Rahul',null,'Rastogi','Delhi','9765178901','Student','1981-09-26');
   INSERT INTO customerr VALUES('C00004','Parul',null,'Gandhi','Delhi','9876532109','Housewife','1976-11-03');
   INSERT INTO branch VALUES('B00001','Asaf ali road','Delhi');
   INSERT INTO branch VALUES('B00002','New delhi main branch','Delhi');
   INSERT INTO branch VALUES('B00003','Delhi cantt','Delhi');
   
   select * from customerr;
   select * from branch;
   use Bankbank;
   
   select customerr.custid, 
       customerr.fname ,
       customerr.mname, 
       customerr.ltname, 
       customerr.city ,
       customerr.mobileno ,
       customerr.occupation, 
       customerr.dob ,
       branch.bid ,
       branch.bname ,
	   branch.bcity
       from
       customerr
       inner join
       branch
       on
       customerr.bname=branch.bname;
       select * from customerr order by bname;
      
     
    
      
   

   