<?php

// Include the random string systemFile
require 'rand.php';

// Begin a new session
session_start();

// Set the session contents
$_SESSION['captcha_id'] = $str;

?>