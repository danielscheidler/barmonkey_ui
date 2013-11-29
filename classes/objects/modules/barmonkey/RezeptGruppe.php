<?PHP

class RezeptGruppe {
    private $REZEPTGRUPPEROW;
    private $ID;
    private $NAME;
    private $BESCHREIBUNG;
    private $PIC;
    private $REZEPTANZAHL;

    function RezeptGruppe( $rezeptGruppenRow ) {
        $this->setRezeptGruppenRow( $rezeptGruppenRow );
        $this->refreshRezeptAnzahl();
    }

    function getRezeptAnzahl() {
        return $this->REZEPTANZAHL;
    }


    function refreshRezeptAnzahl() {
        $ret = 0;

        $sql = "SELECT count('X') cnt FROM rezepte WHERE rezept_gruppe ='" . $this->ID . "'";
        $rslt = $_SESSION['config']->DBCONNECT->executeQuery( $sql );

        if ( mysql_numrows( $rslt ) > 0 ) {
            $countRow = mysql_fetch_array( $rslt );
            $ret = $countRow['cnt'];
        }

        $this->REZEPTANZAHL = $ret;
    }


    function setRezeptGruppenRow( $rezeptGruppenRow ) {
        $this->REZEPTGRUPPEROW = $rezeptGruppenRow;
        $this->ID = $rezeptGruppenRow->getNamedAttribute( "id" );
        $this->NAME = $rezeptGruppenRow->getNamedAttribute( "name" );
        $this->BESCHREIBUNG = $rezeptGruppenRow->getNamedAttribute( "beschreibung" );
        $this->PIC = $rezeptGruppenRow->getNamedAttribute( "pic" );
    }

    function getId() {
        return $this->ID;
    }

    function getName() {
        return $this->NAME;
    }

    function getBeschreibung() {
        return $this->BESCHREIBUNG;
    }

    function getPic() {
        return $this->PIC;
    }


    function getImage() {
        return new Image( $this->PIC );
    }
}

?>