<?php

include('config.php');

$dsn = "mysql:host=$dbHost;dbname=$dbName;charset=UTF8";

try {
    $pdo = new PDO($dsn, $dbUser, $dbPass);
    if ($pdo) {
        echo "Er is een verbinding met de mysql server";
    } else {
        echo "Er is een interne server error opgetreden"; 
    }
} catch(PDOException $e) {
    echo $e->getMessage();
}



$sql = "SELECT Id
              ,NaamAchtbaan
              ,NaamPretpark
              ,Land
              ,Topsnelheid
              ,Hoogte
        FROM Achtbaan";

//Bereid de de query voor met de method prepare
$statement = $pdo->prepare($sql);

// Voer de query uit
$statement->execute();

// Zet de opgehaalde gegevens in een array van objecten
$result = $statement->fetchAll(PDO::FETCH_OBJ);
// var_dump($result);

$tableRows = "";

foreach($result as $info) {
    $tableRows .= "<tr>
                        <td>$info->Id</td>
                        <td>$info->NaamAchtbaan</td>
                        <td>$info->NaamPretpark</td>
                        <td>$info->Land</td>
                        <td>$info->Topsnelheid</td>
                        <td>$info->Hoogte</td>
                        <td>
                            <a href='delete.php'>
                                <img src='b_drop.png' alt='cross'>
                            </a>
                        </td>
                   </tr>";
}
?>
<h3>Persoonsgegevens</h3>

<table border='1'>
    <thead>
        <th>Id</th>
        <th>NaamAchtbaan</th>
        <th>NaamPretpark</th>
        <th>Land</th>
        <th>Topsnelheid</th>
        <th>Hoogte</th>
    </thead>
    <tbody>
        <?php echo $tableRows; ?>
    </tbody>
</table>



