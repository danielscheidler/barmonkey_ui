<?PHP

/**
 * Barmonkey UI
 * 
 * Diese Klasse ist die Hauptklasse bzw Basis des Barmonkey-Moduls.
 * 
 * Beinhaltet: 
 * - Rezept-Auflistung
 * - Rezept-Detailanzeige
 * - Edit-Mode
 * 
 * 
 * @package Barmonkey
 * @author Daniel Scheidler
 * @copyright 2013
 * @version $Id$
 * @access public
 */
class Barmonkey extends Object {
    private $REZEPTE_TBL;
    private $REZEPTE;
    private $REZEPTANZAHL;
    private $AKTIVEREZEPTANZAHL;
    private $VERFUEGBARE_REZEPTE;
    private $EDITMODE;

    /**
     * Barmonkey::Barmonkey()
     * 
     * @param bool $editMode
     * @return
     */
    function Barmonkey( $editMode = false ) {
        $this->EDITMODE = $editMode;

        if ( !isset( $_SESSION['AlleRezepteAnzeigen'] ) ) {
            $_SESSION['AlleRezepteAnzeigen'] = "N";
        }

        $this->handleGruppenwechsel();

        $this->REZEPTANZAHL = getRowCount( "rezepte" );
        $this->REZEPTE_TBL = $this->getRezepteTbl();
        $this->REZEPTE = $this->getRezepte();

        $this->AKTIVEREZEPTANZAHL = count( $this->REZEPTE );
        $_SESSION['aktiveRezeptAnzahl'] = $this->AKTIVEREZEPTANZAHL;
        $_SESSION['rezeptAnzahl'] = $this->REZEPTANZAHL;
    }


    /**
     * Barmonkey::getRezepteTbl()
     * 
     * @return DbTable
     */
    function getRezepteTbl() {
        $rezepteTbl = new DbTable( $_SESSION['config']->DBCONNECT, 'rezepte', array( "name", "beschreibung",
            "rezept_gruppe", "pic", "vorbereitung", "nachbereitung" ),
            "Name, Beschreibung, Kategorie, Bild, Vorbereitung, Nachbereitung", "", "", "rezept_gruppe=" . $_SESSION['currentGroup'] );

        return $rezepteTbl;
    }


    function getFirstGroupId() {
        $rezepteGrpDbTbl = new DbTable( $_SESSION['config']->DBCONNECT, 'rezept_gruppen', array( "id",
            "name", "beschreibung" ), "", "", "name", $this->showAll ? "" :
            "(SELECT count('X') cnt FROM rezepte WHERE rezepte.rezept_gruppe = rezept_gruppen.id)>0" );

        $r = $rezepteGrpDbTbl->getRow( 1 );

        return $r != null ? $r->getNamedAttribute( "id" ) : 0;
    }


    /**
     * Barmonkey::handleGruppenwechsel()
     * 
     * @return
     */
    function handleGruppenwechsel() {
        if ( !isset( $_SESSION['currentGroup'] ) ) {
            $_SESSION['currentGroup'] = $this->getFirstGroupId();
        }

        if ( isset( $_REQUEST['changeGroup'] ) && strlen( $_REQUEST['changeGroup'] ) > 0 ) {
            $_SESSION['currentGroup'] = $_REQUEST['changeGroup'];
        }
    }


    function setAlleRezepteAnzeigen( $value ) {
        if ( $value == "J" ) {
            $_SESSION['AlleRezepteAnzeigen'] = "J";
        } else {
            $_SESSION['AlleRezepteAnzeigen'] = "N";
        }
    }

    function isAlleRezepteAnzeigen() {
        return isset( $_SESSION['AlleRezepteAnzeigen'] ) && $_SESSION['AlleRezepteAnzeigen'] == "J";
    }


    /**
     * Barmonkey::getRezepte()
     * 
     * Liefert ein Array mit allen Rezepten vom Typ Rezept 
     * zur aktuellen Kategorie zurück.
     *
     * Die Methode verwendet als aktuelle Kategorie 
     * den Wert aus $_SESSION['currentGroup'].
     * 
     * @return
     */
    function getRezepte() {
        $ret = array();

        $rezepteDbTbl = $this->REZEPTE_TBL;

        if ( isset( $_REQUEST['DbTableUpdate' . $rezepteDbTbl->TABLENAME] ) && $_REQUEST['DbTableUpdate' . $rezepteDbTbl->TABLENAME] ==
            "Speichern" ) {

            $rezepteDbTbl->doUpdate();
        }

        foreach ( $rezepteDbTbl->ROWS as $rezeptRow ) {
            $rezept = new Rezept( $rezeptRow );
            array_push( $ret, $rezept );
        }

        return $ret;
    }


    /**
     * Barmonkey::showRezept()
     * 
     * zeigt die Detail-Ansicht eines Rezeptes
     * zur Übergebenen ID
     * 
     * @param mixed $rezeptId
     * @return
     */
    function showRezept( $rezeptId ) {
        $rezepteDbTbl = $this->REZEPTE_TBL;

        $row = $rezepteDbTbl->getRowById( $rezeptId );
        $rezept = new Rezept( $row );
        $rezept->show();
    }


    /**
     * Barmonkey::showRezepteListe()
     * 
     * Rezept-Liste zur aktuellen Kategorie anzeigen
     * 
     * Die Methode verwendet als aktuelle Kategorie 
     * den Wert aus $_SESSION['currentGroup'].
     * 
     * @return
     */
    function showRezepteListe() {
        $this->handleGruppenwechsel();

        $urlParamName = $this->EDITMODE ? "editRezept" : "showRezept";

        $rezepteGrpTbl = new DbTable( $_SESSION['config']->DBCONNECT, 'rezept_gruppen', array( "id", "name",
            "beschreibung" ), "", "", "", "id=" . $_SESSION['currentGroup'] );
        echo "<center>";


        // ---------------------
        // Kategorie anzeigen
        // ---------------------
        if ( $rezepteGrpTbl->getRowcount() > 0 ) {
            $name = $rezepteGrpTbl->getRow( 1 )->getNamedAttribute( "name" );
            $beschreibung = $rezepteGrpTbl->getRow( 1 )->getNamedAttribute( "beschreibung" );
            $ttl = new Title( $name, 0, 5 );
            $ttl->show();

            $txt = new Text( $beschreibung, 2 );
            $txt->show();


        }


        // ---------------------
        //  Rezept Hinzufügen
        // ---------------------
        if ( $this->EDITMODE && isset( $_REQUEST['InsertIntoDB' . $this->REZEPTE_TBL->TABLENAME] ) && $_REQUEST['InsertIntoDB' .
            $this->REZEPTE_TBL->TABLENAME] == "Speichern" ) {
            $this->REZEPTE_TBL->doInsert();

            $this->REZEPTE = $this->getRezepte();
            $_REQUEST['editRezept'] = $this->REZEPTE_TBL->getMaxValFromColumn( "id" );

        } elseif ( $this->EDITMODE && isset( $_REQUEST['dbTableNewRezept'] ) ) {

            $title = new Title( "Neuer Eintrag" );
            $title->show();

            $form = $this->REZEPTE_TBL->getInsertMask( "Rezept" );
            $form->add( new Spacer() );
            $form->add( new Hiddenfield( "editRezept", $_REQUEST['editRezept'] ) );
            $form->show();

        }

        if ( ( !isset( $_REQUEST['dbTableNewRezept'] ) ) && $this->EDITMODE ) {
            $newRezept = $this->REZEPTE_TBL->getNewEntryButton( "Rezept Hinzufügen", "Rezept" );

            $dvR = new Div();
            $dvR->add( $newRezept );
            $dvR->show();
        }


        // ---------------------
        // Rezept-Liste anzeigen
        // ---------------------
        $rezeptTbl = new Table( array( "" ) );
        $rezeptTbl->addSpacer( 0, 20 );
        $rezeptTbl->addSpacer( 1, 4 );

        $cnt = 0;
        foreach ( $this->REZEPTE as $rezept ) {
            if ( !isset( $_REQUEST[$urlParamName] ) || ( $_REQUEST[$urlParamName] == $rezept->getId() ) ) {
                $rowClass = "NormalListRow1"; 
                if ( $cnt % 2 == 0 ) {
                    $rowClass ="NormalListRow2"; 
                } 

                $lnk = $rezept->getDetailLink( $urlParamName, $rowClass );

                $r = $rezeptTbl->createRow();
                $r->setAttribute( 0, $lnk );

                $rezeptTbl->addRow( $r );

                $cnt++;
            }

            // Falls DetailLink angeklickt wurde,
            // hier den Rezept-Editor fÃÂ¼r diesen Eintrag anzeigen
            if ( $this->EDITMODE && ( isset( $_REQUEST['editRezept'] ) && $_REQUEST['editRezept'] == $rezept->getId
                () ) && $_SESSION['config']->CURRENTUSER->STATUS == "admin" ) {
                $editor = $rezept->getSingleRowEditor();
                $editor->addSpacer( 1, 5 );

                $frm = new Form();
                $frm->add( new Hiddenfield( "editRezept", $_REQUEST['editRezept'] ) );
                $frm->add( $editor );
                $frm->show();


                // ---------------------
                // Zutaten-Editor anzeigen
                // ---------------------
                $ztTtl = new Title( "Zutaten" );
                $ztTtl->show();

                $zutatenZuordnung = $rezept->getZutatenZuordnung();
                $frmz = $zutatenZuordnung->getObject( 0 );
                $frmz->add( new Hiddenfield( "editRezept", $_REQUEST['editRezept'] ) );

                if ( $zutatenZuordnung->getObjectCount() > 1 ) {
                    $frml = $zutatenZuordnung->getObject( 1 );
                    $frml->add( new Hiddenfield( "editRezept", $_REQUEST['editRezept'] ) );
                }

                $zutatenZuordnung->show();
            }
        }

        if ( $cnt > 0 ) {
            $rezeptTbl->addSpacer( 1, 4 );

            $rezeptTbl->show();
        }


        echo "</center>";
    }


    /**
     * Barmonkey::show()
     * 
     * Standard-Anzeige Methode
     * 
     * @return
     */
    function show() {
        if ( $this->EDITMODE ) {
            $ttl = new Title( "EDIT - MODE" );
            $ft = new FontType( "Arial", "5", false, true, false );
            $ft->setColor( "red" );
            $ttl->setFonttype( $ft );
            $ttl->show();
        }


        if ( isset( $_REQUEST['showRezept'] ) && strlen( $_REQUEST['showRezept'] ) > 0 ) {
            $this->showRezept( $_REQUEST['showRezept'] );
            return;
        }

        $this->showRezepteListe();
    }


}

?>