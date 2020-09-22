<?php

$user = 'root';
$pass = '';
$db = 'classicmodels';

$db = new mysqli('localhost', $user, $pass, $db) or die('Unable to connect to the DB.');

echo "Connected!!!"
?>