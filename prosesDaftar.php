<?php
   require_once("config.php");
   $namaUser = $_POST['namaUser'];
   $alamat = $_POST['alamat'];
   $nomorTelepon = $_POST['nomorTelepon'];
   $id_role = $_POST['id_role'];
   $password = password_hash($_POST["password"], PASSWORD_DEFAULT);
   $query = $db->prepare("SELECT * FROM tblUser WHERE namaUser = ?");
   $query->execute(array($namaUser));
   if($query->rowCount() != 0) {
     echo "<div align='center'>Nama User Sudah Terdaftar! <a href='register.php'>Back</a></div>";
   } else {
     if(!$namaUser || !$password) {
       echo "<div align='center'>Masih ada data yang kosong! <a href='register.php'>Back</a>";
     } else {
       $sql = $db->prepare("INSERT INTO tblUser (namaUser, alamat, nomorTelepon, id_role,password) VALUES (?,?,?,?,?)");
       $simpan = $sql->execute(array($namaUser,$alamat,$nomorTelepon,$id_role,$password));
       if($simpan) {
         echo "<div align='center'>Pendaftaran Sukses, Silahkan <a href='login.php'>Login</a></div>";
       } else {
         echo "<div align='center'>Proses Gagal!</div>";
       }
     }
   }
?>