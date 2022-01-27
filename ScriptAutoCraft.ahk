// A Script to automate a large amount of crafts while afk, optimized for using, in-game macros. Using Auto Hot Key
// Inspired by the script by Garnet on the mmominion.com forum : https://www.mmominion.com/thread-10452.html
wintitle = FINAL FANTASY XIV
#SingleInstance Force
#MaxThreadsPerHotkey 3
// Sets the Script to look for FFXIV

checkToogle(Toogle, Command, Delay) 
// Function to check to see if the toggle is on, followed by what command, and a delay afterwards
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
            checkToogle(Toggle, "2", 31000)
            Sleep 3000
        }
    }
return