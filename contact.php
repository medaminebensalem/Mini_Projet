<?php
// Connexion à la base de données
$host = "localhost";
$dbname = "contact_db"; // à remplacer
$username = "root";         // par défaut avec UwAmp
$password = "";             // mot de passe vide par défaut

$conn = new mysqli($host, $username, $password, $dbname);

// Vérifier la connexion
if ($conn->connect_error) {
    die("Connexion échouée: " . $conn->connect_error);
}

// Récupérer les données du formulaire
$name = $_POST['name'];
$email = $_POST['email'];
$tel = $_POST['tel'];
$message = $_POST['mesage'];

// Requête d'insertion
$sql = "INSERT INTO contact_form (name, email, phone, message) 
        VALUES (?, ?, ?, ?)";

// Utiliser une requête préparée pour la sécurité
$stmt = $conn->prepare($sql);
$stmt->bind_param("ssss", $name, $email, $tel, $message);

if ($stmt->execute()) {
    echo "Message envoyé avec succès.";
} else {
    echo "Erreur : " . $stmt->error;
}

$stmt->close();
$conn->close();
?>
