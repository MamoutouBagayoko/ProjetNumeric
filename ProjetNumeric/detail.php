<?php
include './dataBase.php';
?>
<?php
require './dataBase.php';
?>
<!DOCTYPE html>
<html lang="fr">
<head>
	<title>NUMERIQUE</title>
	 <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	 <link href="https://fonts.googleapis.com/css2?family=Ubuntu:ital,wght@1,700&display=swap" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	<script src="https://kit.fontawesome.com/334e9957b6.js" crossorigin="anonymous"></script>

</head>
<body>
<?php 
  $id = $_GET['id'];
	$req = $db->query('SELECT * FROM personnages WHERE id='.$id);
  $data = $req->fetch();
  ?>
  <div class="row g-0" style="margin-top: 50px;">
  <div class="col-lg-1 col-md-1"></div>
    <div class="card col-lg-4 col-md-4">
    <img src="./image/<?= $data['nom_image']?>" class="img-fluid rounded-start" alt="image">
    </div>
    <div class="col-lg-1 col-md-1"></div>
    <div class="card col-lg-5 col-md-5">
      <div class="card-body">
        <h5 class="card-title"><?= $data['nom_complet'];?></h5>
        <p class="card-text"><?= $data['historique'];?></p>
        
      </div>
    </div>
    <div class="col-lg-1 col-md-1"></div>
  </div>
</body>
</html>