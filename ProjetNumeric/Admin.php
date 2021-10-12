
<?php
require './dataBase.php';
?>
<?php
    
if(isset($_FILES['file'])){
    // pour declarer les variable
extract($_POST);
$tmpName = $_FILES['file']['tmp_name'];
$name = $_FILES['file']['name'];
$size = $_FILES['file']['size'];
$error = $_FILES['file']['error'];
//move_uploaded_file($tmpName,'./image/'.$name);
$tabExtension = explode('.', $name);
    $extension = strtolower(end($tabExtension));
    
    $extensions = ['jpg', 'png', 'jpeg', 'gif'];
    $maxSize = 400000;

    if(in_array($extension, $extensions) && $size <= $maxSize && $error == 0){
        $uniqueName = uniqid('', true);
        //uniqid génère quelque chose comme ca : 5f586bf96dcd38.73540086
        $file = $uniqueName.".".$extension;
        //$file = 5f586bf96dcd38.73540086.jpg
      // echo("okkk"); exit();
        move_uploaded_file($tmpName, './image/'.$file);

        $req = $db->prepare('INSERT INTO personnages (nom_image,nom_complet,historique) VALUES (?,?,?)');
        $req->execute(array($file,$nom_complet,$historique));

        echo "Image enregistrée";
    }
    else{
        echo "Une erreur est survenue";
	}
}

?>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <title>Document</title>
</head>
<body>
<h2>Ajouter une image</h2>
    <form  method="POST" enctype="multipart/form-data">
    
        <label id="file">Fichier</label>
        <input type="file" name="file"><br>
		
	    <input type="text" name="nom_complet" placeholder="Entrer le nom" class="form form-control" required><br>
		<textarea name="historique" placeholder="Entrer L'historique" class="form form-control"></textarea><br>
        <button type="submit">Enregistrer</button>
    </form>
    
</body>
</html>