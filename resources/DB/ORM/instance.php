<?php
// require ORM
require_once __DIR__ . '/rb-mysql.php';
require_once __DIR__ . '/../../../functionalities/parsedotenv.php';

// create DB connection
R::setup(
    getenv('DATABASE_DNS') . ':host=' . getenv('HOST') . ';dbname=' . getenv('DB_NAME'),
    getenv('DB_USER'),
    getenv('USER_PASSWORD')
);
