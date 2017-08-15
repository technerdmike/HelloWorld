
// Project: HelloWorld 
// Created: 2017-08-14

// show all errors
SetErrorMode(2)

// set window properties
SetWindowTitle( "HelloWorld" )
SetWindowSize( 800, 600, 0 )
SetWindowAllowResize( 1 ) // allow the user to resize the window

// set display properties
SetVirtualResolution( 800, 600 ) // doesn't have to match the window
SetOrientationAllowed( 1, 1, 1, 1 ) // allow both portrait and landscape on mobile devices
SetSyncRate( 30, 0 ) // 30fps instead of 60 to save battery
SetScissor( 0,0,0,0 ) // use the maximum available screen space, no black borders
UseNewDefaultFonts( 1 ) // since version 2.0.22 we can use nicer default fonts

CreateText (1, "Hello World")
SetTextSize(1,100)
SetTextColor (1, 255, 0, 0, 255)
//SetTextPosition(1,GetVirtualWidth()/2-GetTextTotalWidth(1)/2,GetVirtualHeight()/2-GetTextTotalHeight(1)/2)

d=1 //direction of the words

do
	SetTextPosition(1,x,0)
/******** Text to Bounce off walls ***************
	if GetTextX (1) > GetVirtualWidth()-GetTextTotalWidth(1)
		d = -1
	endif
	if GetTextX(1)<0
		d=1
	endif
*/
    x=x+d
    Sync()
loop
