<?PHP

/**
 * ZutatenListe des Barmonkey
 * 
 * Oktober 2013     by Daniel Scheidler
 */

class ZutatenListe {
    private $showAll = false;
    private $showSwitchAllLink = true;

    function ZutatenListe( $showAllKategories = false, $switchAllLink = true ) {
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


    function isShowSwitchAllLink() {
        return $this->showSwitchAllLink;
    }

    function setShowAllSwitchLink( $switchAll ) {
        $this->showSwitchAllLink === $switchAll;
    }

    function getShowAllSwitchLink() {
        $lnk = "";
        $text = "Nur verwendete Zutaten anzeigen";


        if ( $this->showAll ) {
            $lnk = "?katListAll=off";
        } else {
            $lnk = "?katListAll=on";
            $text = "Alle Zutaten anzeigen";
        }
        $lnk = new Link( $lnk, $text );
        return $lnk;
    }


    // TODO: Link einbauen für $_SESSION['MenueArt'] *
    function show() {

        $ttl = new Title( "Zutaten", 0, 5 );

        $headLink = new Link( "?katListChng=rezeptgruppen", $ttl );
        $headLink->show();

        $where = "";
        $orderBy = "anzahl DESC, name";
        if ( !$this->showAll ) {
            $orderBy = "name";
            $where = "(SELECT COUNT('X') FROM zutaten_zuordnung zz WHERE zz.zutat_id = zutaten.id) > 0 OR zutaten.manuell='J' ";
                // AND ('JA'=(SELECT 'J' FROM anschluesse a WHERE a.zutat_id = zutaten.id))
        }
        
        $zutatenDbTbl = new DbTable( $_SESSION['config']->DBCONNECT, 'zutaten', array( "id", "name",
            "beschreibung", "prozente", "cl_preis", "manuell",
            "(SELECT COUNT('X') FROM zutaten_zuordnung zz WHERE zz.zutat_id = zutaten.id) anzahl",
            "(SELECT  'J' FROM anschluesse a WHERE a.zutat_id = zutaten.id) angeschlossen" ),
            "Name, Prozente, Preis je cl, Nur Manuell, Menge, in Rezepten", "", $orderBy, $where );

        $tblGrp = new Table( array( "" ) );

        if ( $this->isShowSwitchAllLink() ) {
            $switchLinkRow = $tblGrp->createRow();
            $switchLinkRow->setAlign( "right" );
            $switchLinkRow->setHeight( "20px" );
            $switchLinkRow->setAttribute( 0, $this->getShowAllSwitchLink() );
            $tblGrp->addRow( $switchLinkRow );
        }

        $tblGrp->addSpacer( 1, 4 );
        $cnt = 0;

        foreach ( $zutatenDbTbl->ROWS as $grpRow ) {
            $tblGrpInner = new Table( array( "", "", "" ) );
            $tblGrpInner->setColSizes( array( null, 40, 20 ) );
            $txt = new Text( $grpRow->getNamedAttribute( "name" ), 4 );
            if($grpRow->getNamedAttribute( "angeschlossen" )!="J" ){
                $txt->setColor("orange");
            }
            if($grpRow->getNamedAttribute( "manuell" )=="J" ){
                $txt->setColor("red");
            }
            $r = $tblGrpInner->createRow();

            $r->setHeight( "40" );
            $r->setAlignments( array( "left", "right" ) );

            $r->setStyle( "vertical-align", "middle" );
            $r->setStyle( "padding-left", "5px" );
            $r->setStyle( "padding-right", "5px" );
            $r->setStyle( "opacity", "0.9" );
            $r->setStyle( "-moz-opacity", "0.9" );
            $r->setStyle( "-ms-filter", "progid:DXImageTransform.Microsoft.Alpha(Opacity=80)" );
            $r->setStyle( "filter", "alpha(opacity=80);" );

            if ( $cnt % 2 == 0 ) {
                $r->setClass( "NormalListRow1" );
                $r->setMouseOver( "this.className='HoverListRow'" );
                $r->setMouseOut( "this.className='NormalListRow1'" );

            } else {
                $r->setClass( "NormalListRow2" );
                $r->setMouseOver( "this.className='HoverListRow'" );
                $r->setMouseOut( "this.className='NormalListRow2'" );

            }

            $prz = new Text( $grpRow->getNamedAttribute( "prozente" ) . "%", 2, false, true );
            if ( $grpRow->getNamedAttribute( "prozente" ) == 0 ) {
                $prz = " ";
            }

            $r->setAttribute( 0, $txt );
            $r->setAttribute( 1, $prz );
            $r->setAttribute( 2, new Text( "(" . $grpRow->getNamedAttribute( "anzahl" ) . ")", 2, false, true ) );


            $tblGrpInner->addRow( $r );

            $rFull = $tblGrp->createRow();
            $rFull->setAttribute( 0, new Link( "?changeGroup=" . $grpRow->getNamedAttribute( "id" ), $tblGrpInner ) );
            $tblGrp->addRow( $rFull );

            $cnt++;
        }

        $tblGrp->addSpacer( 1, 4 );
        $tblGrp->show();
    }
}

?>