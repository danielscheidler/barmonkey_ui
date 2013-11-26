<?PHP

/**
 * KategorieListe des Barmonkey
 * 
 * Oktober 2013     by Daniel Scheidler
 */

class KategorieListe {
    private $showAll = false;
    private $showSwitchAllLink = true;

    function KategorieListe( $showAllKategories = false, $switchAllLink = true ) {
        $this->showAll = $showAllKategories;
        $this->showSwitchAllLink = $switchAllLink;

        if ( isset( $_REQUEST['katListAll'] ) ) {
            if ( $_REQUEST['katListAll'] == "on" ) {
                $this->showAll = true;
            } elseif ( $_REQUEST['katListAll'] == "off" ) {
                $this->showAll = false;
            }
        }
    }

    function getRezeptAnzahl( $gruppe ) {
        $ret = 0;

        $sql = "SELECT count('X') cnt FROM rezepte WHERE rezept_gruppe ='" . $gruppe .
            "'";
        $rslt = $_SESSION['config']->DBCONNECT->executeQuery( $sql );

        if ( mysql_numrows( $rslt ) > 0 ) {
            $countRow = mysql_fetch_array( $rslt );
            $ret = $countRow['cnt'];
        }

        return $ret;
    }

    function isShowSwitchAllLink() {
        return $this->showSwitchAllLink;
    }

    function setShowAllSwitchLink( $switchAll ) {
        $this->showSwitchAllLink === $switchAll;
    }

    function getShowAllSwitchLink() {
        $lnk = "";
        $text = "Leere Kategorien ausblenden";


        if ( $this->showAll ) {
            $lnk = "?katListAll=off";
        } else {
            $lnk = "?katListAll=on";
            $text = "Leere Kategorien einblenden";
        }
        $lnk = new Link( $lnk, $text );
        return $lnk;
    }


    function show() {
        $ttl = new Title( "Kategorien", 0, 5 );
        $ttl->show();

        $rezepteGrpDbTbl = new DbTable( $_SESSION['config']->DBCONNECT, 'rezept_gruppen',
            array( "id", "name", "beschreibung" ), "", "", "name", $this->showAll ? "" :
            "(SELECT count('X') cnt FROM rezepte WHERE rezepte.rezept_gruppe = rezept_gruppen.id)>0" );

        $tblGrp = new Table( array( "", "" ) );

        if ( $this->isShowSwitchAllLink() ) {
            $switchLinkRow = $tblGrp->createRow();
            $switchLinkRow->setAlign( "right" );
            $switchLinkRow->setSpawnAll( true );
            $switchLinkRow->setHeight( "20px" );
            $switchLinkRow->setAttribute( 0, $this->getShowAllSwitchLink() );
            $tblGrp->addRow( $switchLinkRow );
        }

        $tblGrp->addSpacer( 1, 4 );
        $cnt = 0;

        foreach ( $rezepteGrpDbTbl->ROWS as $grpRow ) {
            $txt = new Text( $grpRow->getNamedAttribute( "name" ), 4 );
            $lnk = new Link( "?changeGroup=" . $grpRow->getNamedAttribute( "id" ), $txt );
            $r = $tblGrp->createRow();
            $r->setHeight( "40" );
            $r->setAlignments( array( "left", "center" ) );

            $r->setStyle( "vertical-align", "middle" );
            $r->setStyle( "padding-left", "5px" );
            $r->setStyle( "padding-right", "5px" );
            $r->setStyle( "opacity", "0.9" );
            $r->setStyle( "-moz-opacity", "0.9" );
            $r->setStyle( "-ms-filter",
                "progid:DXImageTransform.Microsoft.Alpha(Opacity=80)" );
            $r->setStyle( "filter", "alpha(opacity=80);" );

            if ( $cnt % 2 == 0 ) {
                $r->setStyle( "background-color", "#777777" );
            } else {
                $r->setStyle( "background-color", "#555555" );
            }

            $r->setAttribute( 0, $lnk );
            $r->setAttribute( 1, new Text( "(" . $this->getRezeptAnzahl( $grpRow->getNamedAttribute
                ( "id" ) ) . ")", 2, false, true ) );


            $tblGrp->addRow( $r );

            $cnt++;
        }

        $tblGrp->addSpacer( 1, 4 );

        $tblGrp->show();
    }
}

?>