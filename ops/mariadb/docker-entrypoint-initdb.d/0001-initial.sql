CREATE DATABASE IF NOT EXISTS monitoring;

USE monitoring;

CREATE TABLE clients (
     `Github URL` VARCHAR(255),
     Customer VARCHAR(255),
     Environment VARCHAR(255),
     Hostname VARCHAR(255),
     `User` VARCHAR(255),
     Port INT,
     Branch VARCHAR(255),
     `Base URL` VARCHAR(255),
     `Admin URL` VARCHAR(255),
     Themes TEXT,
     Languages VARCHAR(255),
     HaProxy VARCHAR(255),
     Apache VARCHAR(255),
     Varnish VARCHAR(255),
     Elasticsearch VARCHAR(255),
     ImgProxy VARCHAR(255),
     RedisCache VARCHAR(255),
     RedisSession VARCHAR(255),
     MySQL VARCHAR(255),
     PHP VARCHAR(255),
     `Varnish image cache` VARCHAR(255),
     `Metapackage version` VARCHAR(255),
     `composer vendic imgproxy version` VARCHAR(255),
    `Magento version` VARCHAR(255),
     Sites TEXT,
     `Allowed sources` TEXT,
     `Allowed dev sources` TEXT
);

