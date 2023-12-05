<?php include 'koneksi.php'; 


$id = $_POST['invoice_id'];
$rating = $_POST['rating'];

mysqli_query($koneksi,"update invoice set rating='$rating' where invoice_id='$id'");

header("location:thanks.php");