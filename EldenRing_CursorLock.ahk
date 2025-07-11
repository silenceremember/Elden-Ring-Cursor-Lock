#Requires AutoHotkey v2.0+
#SingleInstance Force

;================================;
;           SETTINGS             ;
;================================;
TargetProcess    := "eldenring.exe"
CheckInterval_ms := 10   ; 10ms = 100 checks per second
LockPadding_px   := 30   ; Dead zone in pixels from each edge

TargetWin   := "ahk_exe " . TargetProcess
SIZEOF_RECT := 16

;================================;
;             HOTKEY             ;
;================================;
F11::ExitApp()

;================================;
;           CORE LOGIC           ;
;================================;
SetTimer(MasterLockLoop, CheckInterval_ms)

MasterLockLoop() {
    static isLocked := false
    local shouldBeLocked := WinActive(TargetWin)

    if (isLocked != shouldBeLocked) {
        ToolTip(shouldBeLocked ? "LOCKED" : "UNLOCKED")
        SetTimer(() => ToolTip(), -500)
        isLocked := shouldBeLocked
    }

    if isLocked {
        try {
            WinGetPos(&x, &y, &width, &height, "A")
            
            if (LockPadding_px * 2 >= width || LockPadding_px * 2 >= height)
                return

            rect := Buffer(SIZEOF_RECT)
            NumPut("Int", x + LockPadding_px,         rect, 0)
            NumPut("Int", y + LockPadding_px,         rect, 4)
            NumPut("Int", x + width - LockPadding_px, rect, 8)
            NumPut("Int", y + height - LockPadding_px,rect, 12)
            DllCall("user32\ClipCursor", "Ptr", rect.Ptr)

        } catch Error {
            return
        }
    } else {
        DllCall("user32\ClipCursor", "Ptr", 0)
    }
}

;================================;
;          EXIT HANDLING         ;
;================================;
OnExit(ExitFunc)
ExitFunc(*) {
    DllCall("user32\ClipCursor", "Ptr", 0)
}