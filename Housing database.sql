Create database if not exists Housingfile;

USE HousingFile;

DROP TABLE IF EXISTS Housing;

CREATE TABLE Housing (
     id BIGINT PRIMARY KEY,                               
    property_location VARCHAR(100),          
    price DECIMAL(10, 2),                    
    bedrooms INT,                            
    Floors INT,                              
    waterfront INT,                          
    property_condition INT,                  
    Grade INT,                               
    yr_built INT,                            
    yr_renovated INT,                        
    zipcode INT                              
);

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.1/Uploads/Housing.csv'
INTO TABLE Housing 
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n' 
IGNORE 1 ROWS 
(id, property_location, price, bedrooms, Floors, waterfront, property_condition, Grade, yr_built, yr_renovated, zipcode);