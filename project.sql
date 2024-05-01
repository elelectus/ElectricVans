DROP DATABASE Project;

CREATE DATABASE Project;
USE Project;

CREATE TABLE van_info (
    van_id INTEGER,
    van_reg CHAR,
    year_of_make INTEGER,
    last_mot DATE);
DROP TABLE van_info;

CREATE TABLE van_info (
    van_id INTEGER,
    van_reg VARCHAR(50),
    year_of_make INTEGER,
    last_mot DATE);
    
INSERT INTO van_info (van_id, van_reg, year_of_make, last_mot)
VALUES
(1, 'FKF', 2015, '2021-10-20'),
(2, 'HWK', 2014, '2021-10-04'),
(3, 'HWL', 2014, '2021-08-03'),
(4, 'HXG', 2014, '2021-06-13'),
(5, 'HXP', 2014, '2021-03-15'),
(6, 'HXT', 2014, '2021-07-07'),
(7, 'HYJ', 2014, '2021-04-29');

SELECT * FROM van_info;

CREATE TABLE driver_info (
    driver_id INTEGER,
    driver_name VARCHAR(50),
    license_number INTEGER);

INSERT INTO driver_info (driver_id, driver_name,license_number)
VALUES
(1,'John Smith','777349'),
(2,'Ben Jones','827829'),
(3,'Mary Green','462920'),
(4,'Stacey Harrison','464741'),
(5,'Jacob Williams','552304'),
(6,'Jamie Cox','132233'),
(7,'Sonny Paul','348945'),
(8,'Emily Thompson','977809'),
(9,'Bailey Dickens','233489'),
(10,'Tom Brown','374623');

SELECT * FROM driver_info;

CREATE TABLE trips_info (
trip_id INTEGER PRIMARY KEY,
van_reg VARCHAR(50),
driver_name VARCHAR(50),
start_location VARCHAR(50),
end_location VARCHAR(50),
FOREIGN KEY (driver_name) REFERENCES driver_info(driver_name));

DROP DATABASE Project;


CREATE DATABASE Project;
USE Project;

CREATE TABLE van_info (
    van_id INTEGER PRIMARY KEY,
    van_reg VARCHAR(50),
    year_of_make INTEGER,
    last_mot DATE);
    
INSERT INTO van_info (van_id, van_reg, year_of_make, last_mot)
VALUES
(1, 'FKF', 2015, '2021-10-20'),
(2, 'HWK', 2014, '2021-10-04'),
(3, 'HWL', 2014, '2021-08-03'),
(4, 'HXG', 2014, '2021-06-13'),
(5, 'HXP', 2014, '2021-03-15'),
(6, 'HXT', 2014, '2021-07-07'),
(7, 'HYJ', 2014, '2021-04-29');

SELECT * FROM van_info;

CREATE TABLE driver_info (
    driver_id INTEGER,
    driver_name VARCHAR(50) PRIMARY KEY,
    license_number INTEGER);

INSERT INTO driver_info (driver_id, driver_name,license_number)
VALUES
(1,'John Smith','777349'),
(2,'Ben Jones','827829'),
(3,'Mary Green','462920'),
(4,'Stacey Harrison','464741'),
(5,'Jacob Williams','552304'),
(6,'Jamie Cox','132233'),
(7,'Sonny Paul','348945'),
(8,'Emily Thompson','977809'),
(9,'Bailey Dickens','233489'),
(10,'Tom Brown','374623');

SELECT * FROM driver_info;

CREATE TABLE trips_info (
trip_id INTEGER PRIMARY KEY,
van_reg VARCHAR(50),
driver_name VARCHAR(50),
start_location VARCHAR(50),
end_location VARCHAR(50),
FOREIGN KEY (driver_name) REFERENCES driver_info(driver_name));alter

-- primary and foregin keys
INSERT INTO trips_info (trip_id, van_reg,driver_name,start_location,end_location)
VALUES
(1,'HYJ','Bailey Dickens','Birmingham','Barnes'),
(2,'HWL','Ben Jones','Salisbury','Louth'),
(3,'FKF','Mary Green','Reading','Blackpool'),
(4,'HXP','Jamie Cox','Slough','Manchester'),
(5,'HYJ','Ben Jones','Maidstone','Woolverhampton'),
(6,'HXT','Mary Green','Barnes','Liverpool'),
(7,'FKF','Tom Brown','Heathrow','Leeds'),
(8,'HXG','John Smith','Warrington','Hull'),
(9,'HXP','Sonny Paul','Rugby','Peterborough'),
(10,'HXT','Tom Brown','Northampton','Chertsey'),
(11,'HXG','Jacob Williams','Liverpool','Reading'),
(12,'HWL','John Smith','Stoke','Slough'),
(13,'HWK','Jamie Cox','Derby','Essex'),
(14,'FKF','Bailey Dickens','Leeds','Birmingham'),
(15,'HWK','Stacey Harrison','Louth','Slough');

SELECT * FROM trips_info;

CREATE TABLE daily_distance_per_month (
avg_daily_distance INTEGER PRIMARY KEY,
van_reg VARCHAR(50),
driver_name VARCHAR(50),
month VARCHAR(50),
date_and_time_added TIMESTAMP);

ALTER TABLE daily_distance_per_month DROP PRIMARY KEY;

-- dropped it because the constraints didnt make sense, wouldnt run the code

INSERT INTO daily_distance_per_month (avg_daily_distance, van_reg, driver_name,
month, date_and_time_added)
VALUES
(31, 'FKF', 'Stacey Harrison', 'July', '2022-01-10 22:01:00'),
(26, 'HWK', 'Jacob Williams', 'July', '2022-01-10 22:01:00'),
(15, 'HWL', 'Bailey Dickens', 'July', '2022-01-10 22:01:00'),
(20, 'HXG', 'Jamie Cox', 'July', '2022-01-10 22:01:00'),
(16, 'HXP', 'Ben Jones', 'July', '2022-01-10 22:01:00'),
(22, 'HXT', 'Sonny Paul', 'July', '2022-01-10 22:01:00'),
(23, 'HYJ', 'Tom Brown', 'July', '2022-01-10 22:01:00'),
(35, 'FKF', 'Ben Jones', 'August', '2022-01-10 22:01:00'),
(29, 'HWK', 'Mary Green', 'August', '2022-01-10 22:01:00'),
(16, 'HWL', 'John Smith', 'August', '2022-01-10 22:01:00'),
(21, 'HXG', 'Stacey Harrison', 'August', '2022-01-10 22:01:00'),
(15, 'HXP', 'Ben Jones', 'August', '2022-01-10 22:01:00'),
(23, 'HXT', 'Jamie Cox', 'August', '2022-01-10 22:01:00'),
(6, 'HYJ', 'Tom Brown', 'August', '2022-01-10 22:01:00'),
(54, 'FKF', 'Jacob Williams', 'September', '2022-01-10 22:01:00'),
(18, 'HWK', 'Bailey Dickens', 'September', '2022-01-10 22:01:00'),
(17, 'HWL', 'John Smith', 'September', '2022-01-10 22:01:00'),
(20, 'HXG', 'Mary Green', 'September', '2022-01-10 22:01:00'),
(16, 'HXP', 'Ben Jones', 'September', '2022-01-10 22:01:00'),
(22, 'HXT', 'Sonny Paul', 'September', '2022-01-10 22:01:00'),
(22, 'HYJ', 'Tom Brown', 'September', '2022-01-10 22:01:00'),
(62, 'FKF', 'Stacey Harrison', 'October', '2022-01-10 22:01:00'),
(14, 'HWK', 'Jacob Williams', 'October', '2022-01-10 22:01:00'),
(19, 'HWL', 'Bailey Dickens', 'October', '2022-01-10 22:01:00'),
(23, 'HXG', 'Jamie Cox', 'October', '2022-01-10 22:01:00'),
(16, 'HXP', 'Ben Jones', 'October', '2022-01-10 22:01:00'),
(13, 'HXT', 'Sonny Paul', 'October', '2022-01-10 22:01:00'),
(17, 'HYJ', 'Tom Brown', 'October', '2022-01-10 22:01:00'),
(31, 'FKF', 'Mary Green', 'November', '2022-01-10 22:01:00'),
(16, 'HWK', 'Jamie Cox', 'November', '2022-01-10 22:01:00'),
(20, 'HWL', 'Bailey Dickens', 'November', '2022-01-10 22:01:00'),
(17, 'HXG', 'Ben Jones', 'November', '2022-01-10 22:01:00'),
(17, 'HXP', 'Tom Brown', 'November', '2022-01-10 22:01:00'),
(15, 'HXT', 'Stacey Harrison', 'November', '2022-01-10 22:01:00'),
(17, 'HYJ', 'Sonny Paul', 'November', '2022-01-10 22:01:00'),
(34, 'FKF', 'Bailey Dickens', 'December', '2022-01-10 22:01:00'),
(25, 'HWK', 'Ben Jones', 'December', '2022-01-10 22:01:00'),
(20, 'HWL', 'Mary Green', 'December', '2022-01-10 22:01:00'),
(16, 'HXG', 'John Smith', 'December', '2022-01-10 22:01:00'),
(19, 'HXP', 'Jamie Cox', 'December', '2022-01-10 22:01:00'),
(13, 'HXT', 'Stacey Harrison', 'December', '2022-01-10 22:01:00'),
(17, 'HYJ', 'Tom Brown', 'December', '2022-01-10 22:01:00');

CREATE TABLE monthly_electricity_usage (
monthly_electricity_usage INTEGER,
van_reg VARCHAR(50),
driver_name VARCHAR(50),
month VARCHAR(50),
date_and_time_added TIMESTAMP);

DROP TABLE monthly_electricity_usage;
CREATE TABLE monthly_electricity_usage (
electricity_usage INTEGER,
van_reg VARCHAR(50),
driver_name VARCHAR(50),
month VARCHAR(50),
date_and_time_added TIMESTAMP);

INSERT INTO monthly_electricity_usage (electricity_usage, van_reg, driver_name, 
month, date_and_time_added)
VALUES
(182, 'FKF', 'Stacey Harrison', 'July', '2022-01-10 22:01:00'),
(178, 'HWK', 'Jacob Williams', 'July', '2022-01-10 22:01:00'),
(82, 'HWL', 'Bailey Dickens', 'July', '2022-01-10 22:01:00'),
(121, 'HXG', 'Jamie Cox', 'July', '2022-01-10 22:01:00'),
(94, 'HXP', 'Ben Jones', 'July', '2022-01-10 22:01:00'),
(107, 'HXT', 'Sonny Paul', 'July', '2022-01-10 22:01:00'),
(108, 'HYJ', 'Tom Brown', 'July', '2022-01-10 22:01:00'),
(137, 'FKF', 'Ben Jones', 'August', '2022-01-10 22:01:00'),
(148, 'HWK', 'Mary Green', 'August', '2022-01-10 22:01:00'),
(73, 'HWL', 'John Smith', 'August', '2022-01-10 22:01:00'),
(115, 'HXG', 'Stacey Harrison', 'August', '2022-01-10 22:01:00'),
(80, 'HXP', 'Ben Jones', 'August', '2022-01-10 22:01:00'),
(89, 'HXT', 'Jamie Cox', 'August', '2022-01-10 22:01:00'),
(17, 'HYJ', 'Tom Brown', 'August', '2022-01-10 22:01:00'),
(265, 'FKF', 'Jacob Williams', 'September', '2022-01-10 22:01:00'),
(124, 'HWK', 'Bailey Dickens', 'September', '2022-01-10 22:01:00'),
(127, 'HWL', 'John Smith', 'September', '2022-01-10 22:01:00'),
(121, 'HXG', 'Mary Green', 'September', '2022-01-10 22:01:00'),
(100, 'HXP', 'Ben Jones', 'September', '2022-01-10 22:01:00'),
(81, 'HXT', 'Sonny Paul', 'September', '2022-01-10 22:01:00'),
(109, 'HYJ', 'Tom Brown', 'September', '2022-01-10 22:01:00'),
(254, 'FKF', 'Stacey Harrison', 'October', '2022-01-10 22:01:00'),
(123, 'HWK', 'Jacob Williams', 'October', '2022-01-10 22:01:00'),
(195, 'HWL', 'Bailey Dickens', 'October', '2022-01-10 22:01:00'),
(128, 'HXG', 'Jamie Cox', 'October', '2022-01-10 22:01:00'),
(102, 'HXP', 'Ben Jones', 'October', '2022-01-10 22:01:00'),
(72, 'HXT', 'Sonny Paul', 'October', '2022-01-10 22:01:00'),
(109, 'HYJ', 'Tom Brown', 'October', '2022-01-10 22:01:00'),
(144, 'FKF', 'Mary Green', 'November', '2022-01-10 22:01:00'),
(142, 'HWK', 'Jamie Cox', 'November', '2022-01-10 22:01:00'),
(174, 'HWL', 'Bailey Dickens', 'November', '2022-01-10 22:01:00'),
(126, 'HXG', 'Ben Jones', 'November', '2022-01-10 22:01:00'),
(171, 'HXP', 'Tom Brown', 'November', '2022-01-10 22:01:00'),
(113, 'HXT', 'Stacey Harrison', 'November', '2022-01-10 22:01:00'),
(149, 'HYJ', 'Sonny Paul', 'November', '2022-01-10 22:01:00'),
(333, 'FKF', 'Bailey Dickens', 'December', '2022-01-10 22:01:00'),
(500, 'HWK', 'Ben Jones', 'December', '2022-01-10 22:01:00'),
(404, 'HWL', 'Mary Green', 'December', '2022-01-10 22:01:00'),
(298, 'HXG', 'John Smith', 'December', '2022-01-10 22:01:00'),
(347, 'HXP', 'Jamie Cox', 'December', '2022-01-10 22:01:00'),
(255, 'HXT', 'Stacey Harrison', 'December', '2022-01-10 22:01:00'),
(441, 'HYJ', 'Tom Brown', 'December', '2022-01-10 22:01:00');

CREATE TABLE monthly_ecodriving_score(
ecodriving_score INTEGER,
van_reg VARCHAR(50),
driver_name VARCHAR(50),
month VARCHAR(50),
date_and_time_added TIMESTAMP);

INSERT INTO monthly_ecodriving_score (ecodriving_score, van_reg, driver_name,
month, date_and_time_added)
VALUES
(64, 'FKF', 'Stacey Harrison', 'July', '2022-01-10 22:01:00'),
(71, 'HWK', 'Jacob Williams', 'July', '2022-01-10 22:01:00'),
(80, 'HWL', 'Bailey Dickens', 'July', '2022-01-10 22:01:00'),
(75, 'HXG', 'Jamie Cox', 'July', '2022-01-10 22:01:00'),
(79, 'HXP', 'Ben Jones', 'July', '2022-01-10 22:01:00'),
(74, 'HXT', 'Sonny Paul', 'July', '2022-01-10 22:01:00'),
(70, 'HYJ', 'Tom Brown', 'July', '2022-01-10 22:01:00'),
(62, 'FKF', 'Ben Jones', 'August', '2022-01-10 22:01:00'),
(72, 'HWK', 'Mary Green', 'August', '2022-01-10 22:01:00'),
(81, 'HWL', 'John Smith', 'August', '2022-01-10 22:01:00'),
(71, 'HXG', 'Stacey Harrison', 'August', '2022-01-10 22:01:00'),
(81, 'HXP', 'Ben Jones', 'August', '2022-01-10 22:01:00'),
(79, 'HXT', 'Jamie Cox', 'August', '2022-01-10 22:01:00'),
(74, 'HYJ', 'Tom Brown', 'August', '2022-01-10 22:01:00'),
(69, 'FKF', 'Jacob Williams', 'September', '2022-01-10 22:01:00'),
(79, 'HWK', 'Bailey Dickens', 'September', '2022-01-10 22:01:00'),
(80, 'HWL', 'John Smith', 'September', '2022-01-10 22:01:00'),
(74, 'HXG', 'Mary Green', 'September', '2022-01-10 22:01:00'),
(81, 'HXP', 'Ben Jones', 'September', '2022-01-10 22:01:00'),
(73, 'HXT', 'Sonny Paul', 'September', '2022-01-10 22:01:00'),
(68, 'HYJ', 'Tom Brown', 'September', '2022-01-10 22:01:00'),
(66, 'FKF', 'Stacey Harrison', 'October', '2022-01-10 22:01:00'),
(78, 'HWK', 'Jacob Williams', 'October', '2022-01-10 22:01:00'),
(79, 'HWL', 'Bailey Dickens', 'October', '2022-01-10 22:01:00'),
(73, 'HXG', 'Jamie Cox', 'October', '2022-01-10 22:01:00'),
(81, 'HXP', 'Ben Jones', 'October', '2022-01-10 22:01:00'),
(80, 'HXT', 'Sonny Paul', 'October', '2022-01-10 22:01:00'),
(74, 'HYJ', 'Tom Brown', 'October', '2022-01-10 22:01:00'),
(65, 'FKF', 'Mary Green', 'November', '2022-01-10 22:01:00'),
(82, 'HWK', 'Jamie Cox', 'November', '2022-01-10 22:01:00'),
(77, 'HWL', 'Bailey Dickens', 'November', '2022-01-10 22:01:00'),
(74, 'HXG', 'Ben Jones', 'November', '2022-01-10 22:01:00'),
(72, 'HXP', 'Tom Brown', 'November', '2022-01-10 22:01:00'),
(77, 'HXT', 'Stacey Harrison', 'November', '2022-01-10 22:01:00'),
(76, 'HYJ', 'Sonny Paul', 'November', '2022-01-10 22:01:00'),
(62, 'FKF', 'Bailey Dickens', 'December', '2022-01-10 22:01:00'),
(78, 'HWK', 'Ben Jones', 'December', '2022-01-10 22:01:00'),
(76, 'HWL', 'Mary Green', 'December', '2022-01-10 22:01:00'),
(84, 'HXG', 'John Smith', 'December', '2022-01-10 22:01:00'),
(75, 'HXP', 'Jamie Cox', 'December', '2022-01-10 22:01:00'),
(77, 'HXT', 'Stacey Harrison', 'December', '2022-01-10 22:01:00'),
(69, 'HYJ', 'Tom Brown', 'December', '2022-01-10 22:01:00');

-- created a join to look at van reg and trips

SELECT van_info.van_id, van_info.van_reg, 
van_info.year_of_make, van_info.last_mot, 
trips_info.trip_id, trips_info.driver_name, 
trips_info.start_location, trips_info.end_location
FROM van_info
INNER JOIN trips_info 
ON van_info.van_reg = trips_info.van_reg;

SELECT van_info.van_id,van_info.van_reg, trips_info.trip_id
FROM van_info
INNER JOIN trips_info
ON van_info.van_reg = trips_info.van_reg;

-- created a view of the join

CREATE VIEW vans_and_trips
AS
SELECT van_info.van_id,van_info.van_reg, trips_info.trip_id
FROM van_info
INNER JOIN trips_info
ON van_info.van_reg = trips_info.van_reg;

DROP VIEW vans_and_trips;

CREATE VIEW vans_and_trips
AS
SELECT van_info.van_id,van_info.van_reg, trips_info.trip_id
FROM van_info
INNER JOIN trips_info
ON van_info.van_reg = trips_info.van_reg;

-- made another join, most of it like errors etc i deleted and reopened + inserted the 
-- final join, 1146 error

USE Project;

-- faced major issue here as only made an alias for van_info, not other 3 tables
-- errors

-- this join looks at van registration and data in each category

SELECT van_info.van_reg,
ddm.avg_daily_distance AS daily_distance,
meu.electricity_usage AS electricity_usage,
mes.ecodriving_score AS ecodriving_score
FROM van_info
LEFT JOIN daily_distance_per_month ddm ON van_info.van_reg = ddm.van_reg
LEFT JOIN monthly_electricity_usage meu ON van_info.van_reg = meu.van_reg 
AND ddm.month = meu.month
LEFT JOIN monthly_ecodriving_score mes ON van_info.van_reg = mes.van_reg 
AND ddm.month = mes.month;
                                      
-- created view of the above join, just copied above code

CREATE VIEW van_info_and_data AS
SELECT van_info.van_reg,
       ddm.avg_daily_distance AS daily_distance,
       meu.electricity_usage AS electricity_usage,
       mes.ecodriving_score AS ecodriving_score
FROM van_info
LEFT JOIN daily_distance_per_month ddm ON van_info.van_reg = ddm.van_reg
LEFT JOIN monthly_electricity_usage meu ON van_info.van_reg = meu.van_reg 
                                      AND ddm.month = meu.month
LEFT JOIN monthly_ecodriving_score mes ON van_info.van_reg = mes.van_reg 
                                      AND ddm.month = mes.month;
                                      
 -- queried the view as part of advanced requirements
SELECT * FROM van_info_and_data;
 -- and the subquery
SELECT AVG(ecodriving_score)
FROM van_info_and_data;
 
-- the view ran fine but forgot i need the month too, otherwise cant see how the
-- numbers varied each month

SELECT 
    van_info.van_reg,
    ddm.avg_daily_distance AS daily_distance,
    meu.electricity_usage AS electricity_usage,
    mes.ecodriving_score AS ecodriving_score
FROM van_info
INNER JOIN daily_distance_per_month ddm ON van_info.van_reg = ddm.van_reg
INNER JOIN monthly_electricity_usage meu ON van_info.van_reg = meu.van_reg 
                                         AND ddm.month = meu.month
INNER JOIN monthly_ecodriving_score mes ON van_info.van_reg = mes.van_reg 
                                         AND ddm.month = mes.month;
                                         
-- didnt look how i wanted it to so just created a table for months and tried
-- to join that too 

CREATE TABLE months (months VARCHAR(50));
INSERT INTO months (months)
VALUES
('July'),('August'),('September'),('October'),('November'),('December');
-- was getting error 1136 as had to put them in individual brackets then a 
-- 1054 as i put month instead of months

SELECT 
    van_info.van_reg,
    ddm.avg_daily_distance AS daily_distance,
    meu.electricity_usage AS electricity_usage,
    mes.ecodriving_score AS ecodriving_score
FROM van_info
INNER JOIN daily_distance_per_month ddm ON van_info.van_reg = ddm.van_reg
INNER JOIN monthly_electricity_usage meu ON van_info.van_reg = meu.van_reg 
                                         AND ddm.month = meu.month
INNER JOIN monthly_ecodriving_score mes ON van_info.van_reg = mes.van_reg 
                                         AND ddm.month = mes.month
INNER JOIN months m ON ddm.month = m.months;

-- couldnt figure this out, difficult to join the extra line of code added
-- didnt create a month column 

DROP TABLE months;

-- queries and subqueried of actual database, not the view

-- this looked at eco driving scores for each month for one particular van registration
SELECT * FROM monthly_ecodriving_score;

SELECT ecodriving_score
FROM monthly_ecodriving_score
WHERE van_reg ='FKF';

-- selected the months column too to show the month name

SELECT * FROM monthly_ecodriving_score;
SELECT ecodriving_score, month
FROM monthly_ecodriving_score
WHERE van_reg ='FKF';

-- diff van reg 

SELECT * FROM monthly_ecodriving_score;
SELECT ecodriving_score, month
FROM monthly_ecodriving_score
WHERE van_reg ='HWK';

-- whats the average monthly ecodriving score, remove month as its an avg althogether

SELECT AVG(ecodriving_score)
FROM monthly_ecodriving_score
WHERE van_reg = 'FKF';

-- also do descending to see in which months score decreased and why e.g.
--  black friday and christmas periods when its busier

SELECT ecodriving_score, month
FROM monthly_ecodriving_score
WHERE van_reg = 'FKF'
ORDER BY ecodriving_score DESC;


-- showing van reg number too

SELECT van_reg, ecodriving_score, month
FROM monthly_ecodriving_score
WHERE van_reg = 'FKF'
ORDER BY ecodriving_score DESC;

-- all the van regs, took out where statement

SELECT van_reg, ecodriving_score, month
FROM monthly_ecodriving_score
ORDER BY van_reg, ecodriving_score DESC;

-- group by query, used the AVG again to get average score for each reg
-- and see which is the highest

SELECT van_reg, AVG(ecodriving_score) AS avg_ecodriving_score
FROM monthly_ecodriving_score
GROUP BY van_reg;

-- while making the EER diagram only one relation showed up,
-- added another foreign key to see if it would change

ALTER TABLE daily_distance_per_month
ADD FOREIGN KEY (van_reg) REFERENCES van_info(van_reg);

-- got 1822 error, data types match and same values, due to comlumn length or
-- multiple of the same values (reg) in the daily distance table?


-- making a stored function, want to see the avg daily distance every month for the
-- 6month period the dataset covers

USE Project;

DELIMITER //
CREATE FUNCTION the_yearly_distance (
    van_reg VARCHAR(50), 
    year_to_calculate INTEGER
)
RETURNS INTEGER
deterministic
BEGIN
    DECLARE the_yearly_distance INTEGER;
    
    SELECT SUM(avg_daily_distance) INTO the_yearly_distance
    FROM monthly_average_daily_distance
    WHERE van_reg = van_reg AND YEAR(date_and_time_info_added) = dateandtime;

    RETURN the_yearly_distance;
END //

DELIMITER ;

DROP FUNCTION the_yearly_distance;

-- dropped and then redid it
-- this is a function that will give the total bi yearly distance by year (only have 1 year)

DELIMITER //
CREATE FUNCTION the_yearly_distance (
    van_reg VARCHAR(50), 
    year_to_calculate INTEGER
)
RETURNS INTEGER
deterministic
BEGIN
    DECLARE the_yearly_distance INTEGER;
    
    SELECT SUM(avg_daily_distance) INTO the_yearly_distance
    FROM monthly_average_daily_distance
    WHERE van_reg = van_reg AND YEAR(date_and_time_info_added) = year_to_calculate;

    RETURN the_yearly_distance;
END //

DELIMITER ;


DROP FUNCTION the_yearly_distance;

SELECT the_yearly_distance ('FKF','2022-01-10') AS the_yearly_distance;

-- 1064 error


SELECT the_yearly_distance('FKF', '2022-01-10') AS the_yearly_distance;
-- 1265 error

SELECT van_reg, the_yearly_distance (van_reg, year_to_calculate) FROM daily_distance_per_month;

-- 1054 error

CREATE TABLE Months (
month_id INT PRIMARY KEY,
month_name VARCHAR(20));

INSERT INTO Months (month_id, month_name) 
VALUES
(1, 'July'),
(2, 'August'),
(3, 'September'),
(4, 'October'),
(5, 'November'),
(6, 'December');

USE Project;





