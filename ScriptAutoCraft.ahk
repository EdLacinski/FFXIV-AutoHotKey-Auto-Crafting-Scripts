wintitle = FINAL FANTASY XIV
#SingleInstance Force
#MaxThreadsPerHotkey 3


checkToogle(Toogle, Command, Delay) 

{
    if (Toogle)
    {
        Controlsend,,{%Command%}, %wintitle%
        Sleep %delay%
    }
    else
    {
        Send 1
    }
    return
}

F12::
    reload
return

F2::
    Toggle := !Toggle

    While Toggle
    {
        IfWinExist %wintitle%
        {
            
            Click, 2
            Sleep 3000
            checkToogle(Toggle, "2", 37000)
            Sleep 3000
            checkToogle(Toggle, "8", 3000)
            checkToogle(Toggle, "8", 3000)
            checkToogle(Toggle, "8", 3000)
            Sleep 3000
        }
    }
return