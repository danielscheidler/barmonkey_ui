<?PHP
$insertBtnShow = true;

$ttl = new Title("Zutaten",0,5);
$ttl->show();

$rezepteDbTbl = new DbTable($_SESSION['config']->DBCONNECT, 'zutaten',
            array("name", "beschreibung", "prozente", "cl_preis", "manuell"), "Name, Beschreibung, Prozent, cl Preis, manuell", "", "name", "");
$rezepteDbTbl->setHeaderEnabled(true);
$rezepteDbTbl->setDeleteInUpdate(true);
$rezepteDbTbl->setNoInsertCols(array("id"));
$rezepteDbTbl->setEditorActive(false);
$rezepteDbTbl->setEditorWidth(80);

if (isset($_REQUEST['dbTableNew']) && strlen($_REQUEST['dbTableNew'])>0 ){
    if (isset($_REQUEST['InsertIntoDB' . $rezepteDbTbl->TABLENAME]) && $_REQUEST['InsertIntoDB' .
        $rezepteDbTbl->TABLENAME] == "Speichern") {
        $rezepteDbTbl->doInsert();
    } else {
        $frm = $rezepteDbTbl->getInsertMask();
        $frm->show();
        $insertBtnShow = false;
    }
} 

$msk = $rezepteDbTbl->getUpdateMask();
$msk->show();

if ($insertBtnShow) {
    $rezepteDbTbl->getNewEntryButton()->show();
} 

       
?>