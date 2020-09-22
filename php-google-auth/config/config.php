<?php

//start session on web page
// session_start();

//Include Google Client Library for PHP autoload file
require_once '../vendor/autoload.php';

//Novi object o Google API Client-a za poziv Google API
$google_client = new Google_Client();

// OAuth 2.0 Client ID
$google_client->setClientId('804136854814-vt0jcpsd8265cjh8skmv0hk3ofnapubi.apps.googleusercontent.com');

// OAuth 2.0 Client Secret key
$google_client->setClientSecret('5BUt1BH8qWepj7nkbGHSev-l');

/* Vas OAuth 2.0 Redirect URI koji ste definirali u odjeljku iznad – ovdje smo promijenili umjesto redirect.php u index.php */
$google_client->setRedirectUri('http://localhost/php-google-auth/api/index.php');

// dohvacamo ove podatke s profila
$google_client->addScope('email');

$google_client->addScope('profile');

?>
