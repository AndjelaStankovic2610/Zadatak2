<?php
	$ime = $_POST['ime'];
	$prezime = $_POST['prezime'];
	$pol=$_POST['pol'];
	$email = $_POST['email'];
	$broj=$_POST['broj'];
	

	$conn = new mysqli('localhost','root','','baza1');
	if($conn->connect_error){
		echo "$conn->connect_error";
		die("Connection Failed : ". $conn->connect_error);
	} else {
		$stmt = $conn->prepare("insert into tabela(ime, prezime, pol, email,broj) values(?, ?, ?,?,?)");
		$stmt->bind_param("ssssi", $ime, $prezime,$pol, $email,$broj);
		$execval = $stmt->execute();
		echo "Registracija je uspela...";
		$stmt->close();
		$conn->close();
	}
	
	if ($_SERVER["REQUEST_METHOD"] == "POST") {
		$ime = $_POST["ime"];
		$prezime = $_POST["prezime"];
		$pol = $_POST["pol"];
		$email = $_POST["email"];
		$broj = $_POST["broj"];
	
	
		$postojeci_podaci = array();
		if (file_exists('podaci.json')) {
			$json_podaci = file_get_contents('podaci.json');
			$postojeci_podaci = json_decode($json_podaci, true);
		}

		$novi_podaci = array(
			'ime' => $ime,
			'prezime' => $prezime,
			'pol' => $pol,
			'email' => $email,
			'broj' => $broj
		);
	
		array_push($postojeci_podaci, $novi_podaci);
		$json_podaci = json_encode($postojeci_podaci,JSON_PRETTY_PRINT,JSON_UNESCAPED_UNICODE);
		file_put_contents('podaci.json', $json_podaci);
		echo 'Podaci su uspešno upisani u JSON fajl.';
	} else {
		echo 'Niste poslali podatke sa forme.';
	}

?>