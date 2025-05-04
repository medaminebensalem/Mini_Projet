<?php
require 'db.php';
session_start();

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $email = $_POST['email'];
    $password = $_POST['password'];

    $stmt = $conn->prepare("SELECT id, nom, password FROM users WHERE email = ?");
    $stmt->bind_param("s", $email);
    $stmt->execute();
    $stmt->store_result();

    if ($stmt->num_rows == 1) {
        $stmt->bind_result($id, $nom, $hashed_password);
        $stmt->fetch();

        if (password_verify($password, $hashed_password)) {
            $_SESSION['user_id'] = $id;
            $_SESSION['nom'] = $nom;
            header("Location: dashboard.php");
            exit();
        } else {
            echo "Mot de passe incorrect.";
        }
    } else {
        echo "Aucun utilisateur trouvé avec cet email.";
    }

    $stmt->close();
    $conn->close();
}
?>

<h2>Connexion</h2>
<form method="POST">
    <label>Email :</label><br>
    <input type="email" name="email" required><br>
    <label>Mot de passe :</label><br>
    <input type="password" name="password" required><br><br>
    <input type="submit" value="Se connecter">
</form>
