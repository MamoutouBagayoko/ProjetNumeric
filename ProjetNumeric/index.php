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
	<script src="https://kit.fontawesome.com/334e9957b6.js" crossorigin="anonymous"></script>
</head>
<body>
<header>
	<a href="#" class="logo"><span>O</span>DK</a>
	<div class="menuToggle" onclick="toggleMenu();"></div>
	<ul class="navbar">
		<li><a href="#banniere" onclick="toggleMenu();">Accueil</a></li>
		<li><a href="#apropos" onclick="toggleMenu();">A propos</a></li>
		<li><a href="#menu" onclick="toggleMenu();">Personnage</a></li>
	</ul>
</header>
<section class="banniere" id="banniere">
	<div class="contenu">
		<h2>BIENVENUE DANS LE DOMAINE NUMERIQUE</h2>
	</div>
</section>
<section class="apropos" id="apropos">
<div class="row">
	<div class="col50">
		<h2 class="titre-text"><span>A</span>Propos de nous</h2>
		<p>« Orange Digital Center », un écosystème entièrement dédié au développement des compétences numériques et à l’innovation, en présence des plus hautes autorités politiques et administratives du Mali, de l'Ambassadeur d’Allemagne au Mali, Dr. Dr. Dietrich Pohl et la représentation diplomatique Française au Mali, d’Alioune Ndiaye, Président Directeur Général d’Orange Afrique et Moyen-Orient, d’Elizabeth Tchoungui, Directrice exécutive RSE, Diversité et Solidarité d’Orange, Présidente Déléguée de la Fondation Orange, de Sékou Dramé, Directeur Général de Sonatel et de Brelotte Ba, Directeur Général d’Orange Mali. </p>
	</div>
	<div class="col50">
		<div class="img">
			<img src="./images/kalanso1.jpg" alt="image">
		</div>
	</div>
</div>
</section>
<section class="menu" id="menu">
	<div class="titre">
		<h2 class="titre-text"><span>P</span>ersonnage</h2>
		<p>Les plus grands visionnaires de la technologie.  </p>
	</div>
	<div class="contenu">
	<?php 
	$req = $db->query('SELECT * FROM personnages');
        while($data = $req->fetch()){?>
		<div class="box">
			<div class="inbox">
			<a href="detail.php?id=<?= $data['id'];?>">
			<img src="./image/<?php echo $data['nom_image'];?> " alt="image"></a>
			</div>
			<div class="text">
				<h3><?= $data['nom_complet'];?></h3>
			</div>

		</div>
		<?php } ?>
		</div>

	
</section>


<script >
	window.addEventListener('scroll', function(){
		const header =document.QuerySelector('header');
		header.classList.toggle("sticky", window.scrolly > 0);
	});
	function toggleMenu(){
		const menuToggle = document.querySelector('.menuToggle');
		const navbar = document.querySelector('.navbar');
		navbar.classList.toggle('active');
		menuToggle.classList.toggle('active');
		
		}
</script>
</body>
</html>