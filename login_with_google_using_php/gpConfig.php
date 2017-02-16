<?php
session_start();

//Include Google client library 
include_once 'src/Google_Client.php';
include_once 'src/contrib/Google_Oauth2Service.php';

/*
 * Configuration and setup Google API
 */
$clientId = '1034449920646-6f2ktf86nrfv8k2s1236r6ktgscuspaf.apps.googleusercontent.com';
$clientSecret = 'hfiw7gqe1Ghx8OzusoMKsuqA';
$redirectURL = 'http://localhost/login_with_google_using_php/';

//Call Google API
$gClient = new Google_Client();
$gClient->setApplicationName('Login to CodexWorld.com');
$gClient->setClientId($clientId);
$gClient->setClientSecret($clientSecret);
$gClient->setRedirectUri($redirectURL);

$google_oauthV2 = new Google_Oauth2Service($gClient);
?>