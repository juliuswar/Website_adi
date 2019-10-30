<?php
   $hostname  = "localhost";
   $username  = "root";
   $password  = "";
   $dbname  = "dbToko";
   $db = new PDO('mysql:dbname='.$dbname.';host='.$hostname, $username, $password);
?>