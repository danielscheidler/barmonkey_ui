<?php

$ft = new FontType();
$ft->setColor( $_SESSION['config']->COLORS['link'] );

$spcr = new Text( "&nbsp;/ " );
$spcr->setFonttype( $ft );
$spcr->setFilter( false );


$txt = new Text( "entwickelt von Daniel Scheidler" );
$txt->setFonttype( $ft );
$developer = new Link( "http://cyborgone.de", $txt, "new" );
$developer->setTarget( "Cybi1" );


$designer = new Text( "designed von Pascal Kloss" );
$designer->setFonttype( $ft );


$sig = new Div();
$sig->setXpos( 15 );
$sig->setYpos( 755 );
$sig->setWidth( 900 );
$sig->setAlign( "center" );
$sig->add( $developer );

?>