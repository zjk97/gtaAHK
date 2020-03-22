#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
#MaxThreadsPerHotkey 2
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

/*
global variables
*/
; These vars are obsolete, created before introducing Pause
; Now this script only supports running with function at once
; Pause the current hotkey and start another one to kill the current hotkey
isMoving := true
isGrabbing := true

/*
Pause
*/
`::
Pause, toggle
return


/*
space coyo auto drive
*/
^r::
	; isMoving := !isMoving

	Send {x down}
	Sleep 30
	Send {x up}
	while (isMoving == true) {
    	    	Random, offset, 50, 80

		Send {x down}
		Sleep 30
		Send {x up}

		Loop 20
		{
    		    Send {w down} 
    		    Sleep 30 
		}
		Send {w up}  

    	    	Sleep (300 + offset)
	}


/*
grab gold
*/
^g::
	; isGrabbing := !isGrabbing

	while (isGrabbing == true) {
    	    	Random, offset, 10, 20

    		Send {LButton down} 
		Send {LButton up} 

    	    	Sleep (100 + offset)
	}


