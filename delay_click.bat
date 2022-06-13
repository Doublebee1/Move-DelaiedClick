@echo Program Starting
@echo off

Start /d "PROGRAM PATH OF WHAT TOU WANT TO EXECUTE" /b "PROGRAM NAME"

set x1 = 700
set y1 = 400

powershell Add-Type -AssemblyName System.Windows.Forms; [Windows.Forms.Cursor]::Position """$(%x1%),$(%y1%)"""

rem ENTER THE DELAYTIME UNDER LINE
timeout /t 40

powershell Add-Type -Name U32 -Namespace W -MemberDefinition '[DllImport("""user32.dll""")]' public static extern void mouse_event(int flags, int dx, int dy, uint cButtons, int info);'; [W.U32]::mouse_event("6","0","0","0","0");

timeout /t 2

rem Programmed by Double.Bee 1