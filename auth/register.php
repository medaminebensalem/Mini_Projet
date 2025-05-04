<?php
require 'db.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $nom = htmlspecialchars($_POST['nom']);
    $email = htmlspecialchars($_POST['email']);
    $password = password_hash($_POST['password'], PASSWORD_DEFAULT);

    $stmt = $conn->prepare("INSERT INTO users (nom, email, password) VALUES (?, ?, ?)");
    $stmt->bind_param("sss", $nom, $email, $password);

    if ($stmt->execute()) {
        echo "Inscription réussie. <a href='login.php'>Connectez-vous</a>";
    } else {
        echo "Erreur : " . $stmt->error;
    }

    $stmt->close();
    $conn->close();
}
?>

<h2>Inscription</h2>
<form method="POST">
    <label>Nom :</label><br>
    <input type="text" name="nom" required><br>
    <label>Email :</label><br>
    <input type="email" name="email" required><br>
    <label>Mot de passe :</label><br>
    <input type="password" name="password" required><br><br>
    <input type="submit" value="S'inscrire">
</form>
