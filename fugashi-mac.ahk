; Reference
; https://qiita.com/crz/items/8d864eabfd3922c9a79c
; http://d.hatena.ne.jp/Tan90909090/20121013/1350092815

; Forces the use of the hook to implement all or some keyboard hotkeys.
#UseHook ON

; ---- BEGIN Function
; It is not a target to hook
is_not_target()
{
    IfWinActive, ahk_exe Hyper.exe
        Return 1
    IfWinActive, ahk_exe Code.exe
        Return 1
    IfWinActive, ahk_exe vcxsrv.exe
        Return 1
    IfWinActive, ahk_exe ubuntu1804.exe
	Return 1
    IfWinActive, ahk_exe WindowsTerminal.exe
	Return 1

    Return 0
}
; ---- END Function

; ---- BEGIN KeyBinding
; -------- BEGIN Move
^a::
    If is_not_target()
        Send, %A_ThisHotkey%
    Else
        Send, {Home}
Return

^e::
    If is_not_target()
        Send, %A_ThisHotkey%
    Else
        Send, {End}
Return

^n::
    If is_not_target()
        Send, %A_ThisHotkey%
    Else
        Send, {Down}
Return

^p::
    If is_not_target()
        Send, %A_ThisHotkey%
    Else
        Send, {Up}
Return

^b::
    If is_not_target()
        Send, %A_ThisHotkey%
    Else
        Send, {Left}
Return
    
^f::
    If is_not_target()
        Send, %A_ThisHotkey%
    Else
        Send, {Right}
Return
; -------- END Move
; -------- BEGIN Edit
^k:: ; Kill (cut) forwards to the end of the line.
    If is_not_target()
        Send, %A_ThisHotkey%
    Else
    {
        Send, +{End} ; Shift + End
        Send, ^x ; Ctrl + x
    }
Return

^y:: ; Yank
    If is_not_target()
        Send, %A_ThisHotkey%
    Else
        Send, ^v ; Ctrl + v
Return

^h:: ; BackSpace
    If is_not_target()
        Send, %A_ThisHotkey%
    Else
    {
        Send, {Backspace}
    }
Return

^d:: ; Delete
    If is_not_target()
        Send, %A_ThisHotkey%
    Else
    {
        Send, {Del}
    }
Return 

<#f:: ; Search
    If is_not_target()
        Send, %A_ThisHotKey%
    Else
        Send, ^f
Return

<#c:: ; Copy
    If is_not_target()
        Send, %A_ThisHotKey%
    Else
        Send, ^c
Return

<#x:: ; Cut
    If is_not_target()
        Send, %A_ThisHotKey%
    Else
        Send, ^x
Return

<#v:: ; Paste
    If is_not_target()
        Send, %A_ThisHotKey%
    Else
        Send, ^v
Return
; -------- END Edit
; ---- END KeyBinding
