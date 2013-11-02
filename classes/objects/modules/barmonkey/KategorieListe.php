<?PHP
/**
 * KategorieListe des Barmonkey
 * 
 * Oktober 2013     by Daniel Scheidler
 */
 
class KategorieListe {

    function KategorieListe() {
    }

    function getRezeptAnzahl($gruppe) {
        $ret = 0;

        $sql = "SELECT count('X') cnt FROM rezepte WHERE rezept_gruppe ='" . $gruppe .
            "'";
        $rslt = $_SESSION['config']->DBCONNECT->executeQuery($sql);

        if (mysql_numrows($rslt) > 0) {
            $countRow = mysql_fetch_array($rslt);
            $ret = $countRow['cnt'];
        }

        return $ret;
    }


    function show() {
        $ttl = new Title("Kategorien", 0, 5);
        $ttl->show();

        $rezepteGrpDbTbl = new DbTable($_SESSION['config']->DBCONNECT, 'rezept_gruppen',
            array("id", "name", "beschreibung"), "", "", "name", "");

        $tblGrp = new Table(array("", ""));
        $tblGrp->addSpacer(1, 0);
        $cnt = 0;

        foreach ($rezepteGrpDbTbl->ROWS as $grpRow) {
            if ($this->getRezeptAnzahl($grpRow->getNamedAttribute("id")) > 0) {
                $txt = new Text($grpRow->getNamedAttribute("name"), 4);
                $lnk = new Link("?changeGroup=" . $grpRow->getNamedAttribute("id"), $txt);
                $r = $tblGrp->createRow();
                $r->setAlignments(array("left", "center"));
                $r->setStyle("vertical-align", "middle");
                $r->setStyle("padding-left", "5px");
                $r->setStyle("padding-right", "5px");

                // Transparenz
                $r->setStyle("opacity", "0.9");
                /* older Mozilla browser */
                $r->setStyle("-moz-opacity", "0.9");
                /* IE8 in Standard Compliant Mode */
                $r->setStyle("-ms-filter", "progid:DXImageTransform.Microsoft.Alpha(Opacity=80)");
                $r->setStyle("filter", "alpha(opacity=80);");

                if ($cnt % 2 == 0) {
                    $r->setStyle("background-color", "#888888");
                }

                $r->setAttribute(0, $lnk);
                $r->setAttribute(1, new Text("(" . $this->getRezeptAnzahl($grpRow->getNamedAttribute("id")) .
                    ")", 2, false, true));


                $tblGrp->addRow($r);
            }

            // $tblGrp->addSpacer(1,03);
            $cnt++;
        }

        $tblGrp->show();
    }
}

?>