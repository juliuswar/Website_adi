<?php
   session_start();
   require_once("config.php");
   $namaUser = $_POST['namaUser'];
   $password = $_POST['password'];
   $query = $db->prepare("SELECT namaUser,password FROM tblUser WHERE namaUser = ? and id_role=2");


   $query->execute(array($namaUser));
   $hasil = $query->fetch();
   if($query->rowCount() == 0) {
       
     echo "<div align='center'>Nama User Belum Terdaftar! <a href='login.php'>Back</a></div>";
   } else {
     if(password_verify($password, $pass_database)) {
       echo "<div align='center'>Password salah! <a href='login.php'>Back</a></div>";
     } else {
       $_SESSION['namaUser'] = $hasil['namaUser'];
       header('location:tool-shop/home.php');
     }
   }
?>