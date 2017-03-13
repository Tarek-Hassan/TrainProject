
<?php
try{
    
    $username="root";
    $password="";
    $database="train project";
    mysql_connect(localhost,$username,$password);
    $selected=mysql_select_db($database) or die( "Unable to select database");
    } 
catch(EXCEPTION $e) {
}
?>
