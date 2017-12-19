
/*
-- To insert data to database
INSERT INTO `userdetails`(`serial_no`, `user_id`, `user_aadharcard_no`, `user_first_name`, `user_last_name`, `user_mobile`, `user_email_id`) VALUES (1,1,98745632112,'Venkata Sivaprasad Reddy','Pulagam',9494953236,'pvsivap@gmail.com');
*/

/*
-- To insert multiple data to database
INSERT INTO practisemysqldb.userdetails(`user_aadharcard_no`, `user_first_name`, `user_last_name`, `user_mobile`, `user_email_id`) 
VALUES 
(987434451412,'Venkata Swamy','Balaraju',7036106968,'venkysofttech@gmail.com'),
(987476731412,'Venkateswarulu','Nagella',9491920936,'nvenky0423@gmail.com'),
(987459887112,'GopiNath Reddy','Vaka',9603856851,'vakagopinathreddy@gmail.com'),
(985455531712,'Suresh Reddy','Muppidi',9030590715,'suresh.muppidi@gmail.com'),
(987455375412,'Lakshmana MuraliDhar Sesha Singh','Angara',9573633863,'almssingh@gmail.com'),
(987453333312,'Prabhakar','Meka',9618517777,'prabhakarm@gmail.com'),
(987455233332,'Ratna Prasad','Sarella',83329993370,'ratnaprasadsarella@gmail.com');
*/
-- 987434451412, 987476731412, 987459887112, 985455531712, 987455375412, 987453333312, 987455233332;



/*
-- To get data from database
SELECT * FROM practisemysqldb.userdetails;
*/

/*
-- To get data of 100 rows/values from database
SELECT * FROM practisemysqldb.userdetails LIMIT 100;
*/

/*
-- To get a particular data from database
SELECT * FROM practisemysqldb.userdetails Where user_id = 1;
*/

/*
-- To delete a particcular of data base
Delete FROM practisemysqldb.userdetails Where user_id = 3;
*/

/*
987434451412, 
987476731412, 
987459887112, 
985455531712, 
987455375412, 
987453333312, 
987455233332;
*/


/*
INSERT INTO practisemysqldb.hospitalbills(`user_id`, `user_aadharcard_no`, `user_bill_no`, `user_description`) 
VALUES 
(18, 987434451412, 000001,'fever'),
(25, 987476731412, 000002,'flu'),
(33, 987455233332, 000003,'pregnant'),
(32, 987453333312, 000004,'kids having fever'),
(26, 987459887112, 000005,'skin rashers'),
(33, 987455233332, 000006,'fever'),
(25, 987476731412, 000007,'dust allergy'),
(26, 987459887112, 000008,'motions'),
(32, 987453333312, 000009,'body pains'),
(33, 987455233332, 000010,'sever cold'),
(25, 987476731412, 000011,'sleeping disorder'),
(33, 987455233332, 000012,'stomach upset'),
(33, 987455233332, 000013,'fever'),
(25, 987476731412, 000014,'lazyness'),
(26, 98745632112, 000015,'flu'),
(1, 987459887112, 000016,'Skin rash in eritria hospital'),
(26, 98745632112, 000017,'influenza'),
(1, 987459887112, 000018,'Dust allergy');


SELECT * FROM practisemysqldb.hospitalbills;
*/

/*
INSERT INTO practisemysqldb.shoppingbills(`user_id`, `user_aadharcard_no`, `user_bill_no`, `user_description`) 
VALUES 
(18, 987434451412, 000001,'eye liner'),
(25, 987476731412, 000002,'over coat'),
(33, 987455233332, 000003,'hand bag'),
(32, 987453333312, 000004,'formal dress'),
(26, 987459887112, 000005,'mobile phone'),
(33, 987455233332, 000006,'sd card'),
(25, 987476731412, 000007,'rubicks cude'),
(26, 987459887112, 000008,'ear phones'),
(32, 987453333312, 000009,'cricket set'),
(33, 987455233332, 000010,'Gold ring'),
(25, 987476731412, 000011,'bed sheets'),
(33, 987455233332, 000012,'shirt and jeans'),
(33, 987455233332, 000013,'laptop'),
(25, 987476731412, 000014,'set up box'),
(26, 98745632112, 000015,'water bottle sets'),
(1, 987459887112, 000016,'flute'),
(26, 98745632112, 000017,'movie tickets'),
(1, 987459887112, 000018,'vr headset');

SELECT * FROM practisemysqldb.shoppingbills;
*/

/*
INSERT INTO practisemysqldb.travelbills(`user_id`, `user_aadharcard_no`, `user_bill_no`, `user_description`) 
VALUES 
(18, 987434451412, 000001,'to mumbai'),
(25, 987476731412, 000002,'to Banglore'),
(33, 987455233332, 000003,'to delhi'),
(32, 987453333312, 000004,'to hyderabad'),
(26, 987459887112, 000005,'to london'),
(33, 987455233332, 000006,'to moscow'),
(25, 987476731412, 000007,'to australia'),
(26, 987459887112, 000008,'to florida'),
(32, 987453333312, 000009,'to texas'),
(33, 987455233332, 000010,'to paris'),
(25, 987476731412, 000011,'to rome'),
(33, 987455233332, 000012,'to china'),
(33, 987455233332, 000013,'to japan'),
(25, 987476731412, 000014,'to california'),
(26, 98745632112, 000015,'to chicago'),
(1, 987459887112, 000016,'to africa'),
(26, 98745632112, 000017,'to alaska'),
(1, 987459887112, 000018,'to Switzerland');

SELECT * FROM practisemysqldb.travelbills;
*/


/*
Joints
-------
*/

/*
SELECT *
FROM practisemysqldb.userdetails a, practisemysqldb.shoppingbills b 
WHERE a.user_id = b.user_id;
*/

/*
SELECT a.user_id, a.user_first_name, a.user_last_name, b.user_bill_no, b.user_description 
FROM practisemysqldb.userdetails a, practisemysqldb.shoppingbills b 
WHERE a.user_id = 33 AND b.user_id = 33;
*/


/*
-- the below example INNER JOIN we have to descrive table name after from this will be made as primary table and the tablels that we represented
-- after the INNER JOIN will be merged in to the primary table nad condition is given after ON andthe only tables to be displayed is indicated
-- after the SELECT statement.
/*
SELECT *
FROM practisemysqldb.userdetails  
INNER JOIN practisemysqldb.shoppingbills ON practisemysqldb.userdetails.user_id = practisemysqldb.shoppingbills.user_id;
*\/
/\*
SELECT *
FROM practisemysqldb.shoppingbills  
INNER JOIN practisemysqldb.userdetails ON practisemysqldb.userdetails.user_id = practisemysqldb.shoppingbills.user_id;
*/



/*
--To join three tables

Select *
FROM ((practisemysqldb.userdetails
INNER JOIN practisemysqldb.shoppingbills ON practisemysqldb.userdetails.user_id = practisemysqldb.shoppingbills.user_id)
INNER JOIN practisemysqldb.travelbills ON practisemysqldb.userdetails.user_id = practisemysqldb.travelbills.user_id);
*/

SELECT *
FROM practisemysqldb.userdetails  
LEFT JOIN practisemysqldb.shoppingbills ON practisemysqldb.userdetails.user_id = practisemysqldb.shoppingbills.user_id;


