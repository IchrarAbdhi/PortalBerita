<?php 
  session_start();
  if (!$_SESSION["id_pengguna"]){
        header('Location:../index.php?halaman=login&pesan=login_dulu');
  }
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Portalf1.</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="../bootstrap/css/bootstrap.min.css">
    <script src="../bootstrap/js/bootstrap.min.js"></script>
    <link rel="icon" type="image/x-icon" href="f1logo2.png">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>
<body>
<nav class="navbar navbar-expand-md bg-light navbar-light font-weight-bold fixed-top">
    <!-- Brand -->
    <?php
        include '../config/database.php';
        $ambil_kategori = mysqli_query ($kon,"select * from profil limit 1");
        $row = mysqli_fetch_assoc($ambil_kategori); 
        $nama_website = $row['nama_website'];
        $copy_right = $row['nama_website'];
    ?>
    <a class="navbar-brand" href="../index.php"><img src="f1logo2.png" alt="" width="70" height="50" class="d-inline-block align-text-top"></a>
    <a class="navbar-brand" href="../index.php"><?php echo $nama_website; ?> </a>

    <!-- Toggler/collapsibe Button -->
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
        <span class="navbar-toggler-icon"></span>
    </button>

    <!-- Navbar links -->
    <div class="collapse navbar-collapse" id="collapsibleNavbar">
        <ul class="navbar-nav  ml-auto">
        <li class="text-light">Login Sebagai :  <?php echo $_SESSION["nama_pengguna"]; ?> </li>
        </ul>
    </div>
   
</nav>
<br>
<br>
<br>
<br>
<?php 
if(isset($_GET['halaman']) && !isset($_GET['kategori'])){
    $halaman = $_GET['halaman'];

}

if(isset($_GET['halaman']) &&  isset($_GET['kategori'])){

    include '../config/database.php';
    $ambil_kategori = mysqli_query ($kon,"select * from kategori where id_kategori='".$_GET['kategori']."' limit 1");
    $row = mysqli_fetch_assoc($ambil_kategori); 
    $kategori = $row['nama_kategori'];
    $halaman = $_GET['halaman'];
   echo "<h1>".ucwords($halaman)." ".ucwords($kategori)."</h1>";
}
?>

</div>
<div class="container">
    <div class="row">
        <div class="col-sm-2">
            <div class="list-group">
                <a href="index.php?halaman=kategori" class="list-group-item list-group-item-action">Artikel</a>
                <a href="index.php?halaman=komentar" class="list-group-item list-group-item-action">Komentar</a>
                <a href="index.php?halaman=admin" class="list-group-item list-group-item-action">Admin</a>
                <a href="index.php?halaman=profil" class="list-group-item list-group-item-action">Profil</a>
                <a href="logout.php" class="list-group-item list-group-item-action">Logout</a>
            </div>
        </div> 
        <div class="col-sm-10">
        <?php 
            if(isset($_GET['halaman'])){
                $halaman = $_GET['halaman'];
                switch ($halaman) {
                    case 'kategori':
                        include "artikel/kategori.php";
                        break;
                    case 'artikel':
                        include "artikel/index.php";
                        break;
                    case 'komentar':
                        include "komentar/index.php";
                        break;
                    case 'admin':
                        include "admin/index.php";
                        break;
                    case 'profil':
                        include "profil/index.php";
                        break;
                    default:
                    echo "<center><h3>Maaf. Halaman tidak di temukan !</h3></center>";
                    break;
                }
            }else {
                include "dashboard.php";
            }
        ?>
        </div>
    </div>
    <br>
</div>
<div class="jumbotron text-center bg-danger" style="margin-bottom:0">
    <p class="font-weight-bold text-light">Copyright <?php echo  $copy_right; ?> 2022</p>
</div>
</body>
</html>
