<?php
$host = "sql7.freesqldatabase.com";
$dbname = "sql7763540";
$username = "sql7763540";
$password = "QNsYA36zDh";

try {
    $pdo = new PDO("mysql:host=$host;dbname=$dbname;charset=utf8", $username, $password);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    die("Connection failed: " . $e->getMessage());
}
?>
