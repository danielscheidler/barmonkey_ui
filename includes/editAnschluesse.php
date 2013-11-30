<?PHP
$insertBtnShow = true;

$ttl = new Title("Anschlüsse",0,5);
$ttl->show();

// Einbauen dass Zutaten mit manuellJN = J nicht ausgewählt werden können!

$rezepteDbTbl = new DbTable($_SESSION['config']->DBCONNECT, 'anschluesse',
            array("id", "zutat_id"), "Anschluss, Zutat", "", "id", "id > 0 and id < 17");
$rezepteDbTbl->setHeaderEnabled(true);
$rezepteDbTbl->setReadOnlyCols(array("id"));


$rezepteDbTbl->showUpdateMask();


       
?>