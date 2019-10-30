<?php session_start(); ?>

<title>Halaman Sukses Login</title>
<div align='center'>
   Selamat Datang, <b><?php echo $_SESSION['namaUser'];?></b> <a href="logout.php"><b>Logout</b></a>
</div>