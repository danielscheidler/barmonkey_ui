<?php

include ( "header.php" );


// Kopftexte und Nachrichten-PrÃÂÃÂ¼fung werden in DivByInclude  verwaltet

if ( isset( $_SESSION['mainpage'] ) && strlen( $_SESSION['mainpage'] ) > 0 ) {
    include ( $_SESSION['mainpage'] );
}

?>