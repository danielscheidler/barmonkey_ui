<?PHP

$ttl = new Title("Kategorien", 0, 5);
$ttl->show();


$rezepteGrpDbTbl = new DbTable($_SESSION['config']->DBCONNECT,
                            'rezept_gruppen', 
                            array("id", "name", "beschreibung") , 
                            "",
                            "",
                            "name",
                            "");

$tblGrp = new Table(array(""));
$tblGrp->addSpacer(1,0);

foreach ($rezepteGrpDbTbl->ROWS as $grpRow) {
  $txt = new Text($grpRow->getNamedAttribute("name"), 4);
  $lnk = new Link("?changeGroup=".$grpRow->getNamedAttribute("id"), $txt);

  $r = $tblGrp->createRow();
  $r->setStyle("padding-left","15px");
  $r->setAttribute(0,$lnk);
  $tblGrp->addRow($r);
  $tblGrp->addSpacer(1,03);
}

$tblGrp->show();
?>