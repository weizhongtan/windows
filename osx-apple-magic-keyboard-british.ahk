;=====================================================================================
; Enables ergonomic use of an Apple Magic Keyboard with Windows
;=====================================================================================

; Full setup includes:
; - Autohotkey (this script)
;   - Ensure that the file is saved with UTF-8 with BOM encoding
; - SharpKeys to swap the Ctrl (Left) and Win (Left) keys
; - Keyboard Manager (part of Windows PowerToys) to re-reverse the above keys without having to restart the machine
;
; To switch to the magic keyboard: enable SharpKeys, Autohotkey and disable Keyboard manager
; To switch to a windows keyboard: disable SharpKeys, suspend hotkeys in Autohotkey and enable Keyboard manager

; V1toV2: Removed #NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode("Input")  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir(A_ScriptDir)  ; Ensures a consistent starting directory.

; --------------------------------------------------------------
; NOTES
; --------------------------------------------------------------
; ! = ALT
; ^ = CTRL
; + = SHIFT
; # = WIN
;
; Debug action snippet: MsgBox You pressed Control-A while Notepad is active.

; Alt tab shenanigans
LCtrl & Tab:: AltTab
!Tab:: Send("^{Tab}")
!+Tab:: Send("^+{Tab}")

; Replicate Spotlight
^Space:: Send("^{Esc}")

; Cursor navigation
^Left::Send("{Home}")
^Right::Send("{End}")
^+Left::Send("+{Home}")
^+Right::Send("+{End}")

^Up::Send("^{Home}")
^Down::Send("^{End}")
^+Up::Send("^+{Home}")
^+Down::Send("^+{End}")

#a::Send("{Home}")
#e::Send("{End}")

!BackSpace::Send("^{BackSpace}")

; Shift + 3 to £
+3::Send("{Text}£")

; Alt + 3 to #
RAlt & 3::Send("{Text}#")

; Media keys
RAlt & F7::Send("{Media_Prev}")
RAlt & F8::Send("{Media_Play_Pause}")
RAlt & F9::Send("{Media_Next}")
F10::Send("{Volume_Mute}")
F11::Send("{Volume_Down}")
F12::Send("{Volume_Up}")