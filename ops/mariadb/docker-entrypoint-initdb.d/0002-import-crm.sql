-- First, delete the existing data if you want to overwrite it
TRUNCATE TABLE `clients`;

-- Then, load the new data from the CSV file
LOAD DATA INFILE '/docker-entrypoint-initdb.d/clients.csv'
INTO TABLE `clients`
FIELDS TERMINATED BY ','  -- assuming the fields are comma-separated
ENCLOSED BY '"'           -- assuming fields are enclosed by double quotes
LINES TERMINATED BY '\n'  -- assuming each line is a new record
IGNORE 1 LINES            -- assuming the first line is a header
(
     `Github URL`,
    Customer,
    Environment,
    Hostname,
    `User`,
    Port,
    Branch,
    `Base URL`,
    `Admin URL`,
    Themes,
    Languages,
    HaProxy,
    Apache,
    Varnish,
    Elasticsearch,
    ImgProxy,
    RedisCache,
    RedisSession,
    MySQL,
    PHP,
    `Varnish image cache`,
    `Metapackage version`,
    `composer vendic imgproxy version`,
     `Magento version`,
    Sites,
    `Allowed sources`,
    `Allowed dev sources`
);