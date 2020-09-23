<?php

// session_start();

require_once '../vendor/autoload.php';

$google_client = new Google_Client();

$google_client->setClientId('804136854814-vt0jcpsd8265cjh8skmv0hk3ofnapubi.apps.googleusercontent.com');

$google_client->setClientSecret('5BUt1BH8qWepj7nkbGHSev-l');

$google_client->setRedirectUri('http://localhost/php-google-auth/api/index.php');

$google_client->addScope('email');

$google_client->addScope('profile');

?>
