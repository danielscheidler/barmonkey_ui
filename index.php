<?php

/**
 * 
 * @author Daniel Scheidler 
 * @copyright Mai 2008
 */
include_once ( "init.php" );

$runLinkTarget = "mainpage";

/** ------------------------------------
 *  ACTION-LOG
 *
 *  Hier wird festgehalten was wann von wem 
 *  getan wurde (userid, sessionid, aktion, timestamp)
 * ------------------------------------ */
if ( isset( $_REQUEST['CySess'] ) && strlen( $_REQUEST['CySess'] ) > 0 ) {
    include ( "ActionLog.php" );
}


/** ------------------------------------
 *  HANDLER
 *
 *  Der IndexHandler verwaltet alle Aktionen
 *  die mittels "do" URL-Parameter angestoÃÂÃÂen 
 *  werden.
 * ------------------------------------ */
if ( isset( $_REQUEST['do'] ) && strlen( $_REQUEST['do'] ) > 0 ) {
    $HANDLER = new IndexHandler( $_SESSION['config'] );
    $HANDLER->DoAction( $_REQUEST['do'] );
}


/** ------------------------------------
 *  RUNLINKS
 *
 *  Der "run" URL-Parameter steuert Anderungen 
 *  der dynamischen Inhalte
 *  
 *  der Wert der mittels ?run= ÃÂÃÂ¼bergeben wird
 *  entspricht dem Datenbankwert:  (Tabelle: RUNLINKS / Spalte: NAME)
 *
 *  der optionale URL-Parameter "runtarget"
 *  gibt an wie der Name der Sessionvariable lautet 
 *  in der der Link aktualisiert werden soll.
 *  Wird dieser nicht angegeben, 
 *  gilt der Wert automatisch fÃÂÃÂ¼r **$_SESSION['mainpage']**
 * ------------------------------------ */

// PrÃÂÃÂ¼fung ob abweichendes Ziel angegeben wurde
if ( isset( $_REQUEST['runtarget'] ) && strlen( $_REQUEST['runtarget'] ) > 0 ) {
    $runLinkTarget = $_REQUEST['runtarget'];
}

//Alle RunLinks fÃÂÃÂ¼r ermitteltes Ziel bereitstellen
$RUNLINKS = new RunLinks( $_SESSION['config']->DBCONNECT, $runLinkTarget );


/** ------------------------------------
 *  MENUPARENT
 *
 *  Der "menuParent" URL-Parameter steuert Anderungen 
 *  der Oberkategorie
 *  
 *  der Wert der mittels ?menuParent= ÃÂÃÂ¼bergeben wird
 *  entspricht dem Datenbankwert:  (Tabelle: MENU / Spalte: PARENT)
 * ------------------------------------ */
if ( isset( $_REQUEST['menuParent'] ) && strlen( $_REQUEST['menuParent'] ) > 0 ) {
    $_SESSION['MENU_PARENT'] = $_REQUEST['menuParent'];

    if ( !( isset( $_REQUEST['run'] ) && strlen( $_REQUEST['run'] ) > 0 ) ) {
        $_SESSION['runLink'] = $RUNLINKS->getFirstRunLinkNameByParent( $_SESSION['MENU_PARENT'] );
    }

} elseif ( !isset( $_SESSION['MENU_PARENT'] ) ) {
    $_SESSION['MENU_PARENT'] = "Treffpunkt";
}


$run = "";
// Wenn neues Ziel angefordert wurde, dieses ermitteln
if ( isset( $_REQUEST['run'] ) && strlen( $_REQUEST['run'] ) > 0 ) {
    if ( isValidRun( $_REQUEST['run'] ) ) {
        // NEUES ZIEL ANGEFORDERT
        $run = $RUNLINKS->getLinkByName( $_REQUEST['run'] );
        $_SESSION['runLink'] = $_REQUEST['run'];
        $_SESSION['tmp'] = array();
    }
} elseif ( !isset( $_SESSION[$runLinkTarget] ) || strlen( $_SESSION[$runLinkTarget] ) == 0 || ( isLoggedIn
() && $_SESSION['runLink'] == "login" ) ) {
    //KEIN ZIEL ANGEGEBEN -> KEIN ALTES ZIEL VORHANDEN    Default: start
    $run = $RUNLINKS->getLinkByName( "start" );
    $_SESSION['runLink'] = "start";
}


if ( isset( $_REQUEST['changeGroup'] ) && $_SESSION['runLink'] != "start" && $_SESSION['runLink'] !=
    "editCocktails" ) {
    $run = $RUNLINKS->getLinkByName( "start" );
    $_SESSION['runLink'] = "start";
}


//Wurde ein Link gefunden wird dieser Wert im entsprechenden Ziel aktualisiert
if ( strlen( $run ) > 0 ) {
    // Ist ein alternatives Ziel gesetzt,
    // wird der neue link in die entsprechende session-variable geschrieben
    // ansonsten gilt der RUNLINK fÃÂÃÂ¼r die Hauptseite (mainpage)
    if ( isset( $runLinkTarget ) && strlen( $runLinkTarget ) > 0 ) {
        $_SESSION[$runLinkTarget] = $run;
    } else {
        $_SESSION['mainpage'] = $run;
    }
}


include ( "header_index.php" );

include ( "layout.php" );

include ( "foot.php" );

?>
