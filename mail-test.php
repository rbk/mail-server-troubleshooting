<?php
    // Set the email address below and slap this on the server you want to check.
    // Run the file by navigating to it in the browser or running `php /path/mail-test.php`
    ini_set( 'display_errors', 1 );
    error_reporting( E_ALL );
    $from = "YOUR-EMAIL-ADDRESS";
    $to = "YOUR-EMAIL-ADDRESS";
    $subject = "PHP Mail Test script";
    $message = "This is a test to check the PHP Mail functionality";
    $headers = "From:" . $from;
    mail($to,$subject,$message, $headers);
    echo "Test email sent";
?>
