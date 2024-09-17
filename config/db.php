<?php

$host = "127.0.0.1";                // Domainnaam van de computer.
$dbName = "mbogodigital";                // Naam van de MySQL database.
$user = "mbogodigitalUser";          // Gebruikersnaam die toegang heeft tot de database.
$password = "Vrieskist@247";        // Wachtwoord van de gebruiker.

// Regel hieronder alleen gebruiken als je docker-compose gebruikt.
// $host = "mysql";

/*
 * MAAK EEN GEBRUIKER AAN IN MYSQL
 * 
 * Deze commando's kun je ook runnen in phpMyAdmin.
 * 
 * Database aanmaken:
 * CREATE DATABASE mbogodigital;
 * 
 * MySQL gebruiker aanmaken:
 * CREATE USER 'mbogodigitalUser'@'localhost' identified by 'Vrieskist@247';
 * 
 * MySQL gebruiker toegang geven tot de database:
 * GRANT ALL PRIVILEGES ON mbogodigital.* TO 'mbogodigitalUser'@'localhost';
 * 
 * Nieuwe gebruiker activeren:
 * FLUSH PRIVILEGES;
 * 
 */

 /*
  * extension=pdo_mysql
  * Deze moet je activeren in de php.ini.
  * Dit bestand staat hoogstwaarschijnlijk in de map c:\xampp\php.
  * Zoek naar pdo_mysql en haal de ; weg aan het begin van de regel.
  */

 /* 
  * TODO
  * Het is beter om hier omgevingsvariabelen te gebruiken ipv van de gegevens (met wachtwoord)
  * hier in de code te zetten.
  *
  * Zo moet de code er dan uiteindelijk uitzien.
// $host = getenv("MYSQL_ROOT_HOST");
// $dbName = getenv("MYSQL_DATABASE");
// $user = getenv("MYSQL_USER");
// $password = getenv("MYSQL_PASSWORD");

  */


