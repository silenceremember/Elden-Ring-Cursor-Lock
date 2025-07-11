# Elden-Ring-Cursor-Lock
A lightweight script to lock the mouse cursor within the Elden Ring window. Prevents accidental clicks, focus loss, and Alt-Tabs on multi-monitor setups.

<br>

<p align="center">
  <a href="https://github.com/silenceremember/Elden-Ring-Cursor-Lock/releases/latest">
    <img src="https://img.shields.io/github/v/release/silenceremember/Elden-Ring-Cursor-Lock?style=for-the-badge" alt="Latest Release">
  </a>
  <a href="https://github.com/silenceremember/Elden-Ring-Cursor-Lock/blob/master/LICENSE">
    <img src="https://img.shields.io/github/license/silenceremember/Elden-Ring-Cursor-Lock?style=for-the-badge" alt="License">
  </a>
</p>


## Features

- **Automatic:** Activates only when the Elden Ring window is active.
- **Safe:** 100% safe for Easy Anti-Cheat. It uses a standard Windows function (`ClipCursor`) and does not interact with game files or memory.
- **Lightweight:** Consumes virtually no system resources.
- **Customizable:** Easily change settings like padding or the exit hotkey.

## Installation

### 1. Download the Script

Go to the [**Releases**](https://github.com/silenceremember/Elden-Ring-Cursor-Lock/releases/latest) page and download the `EldenRing_CursorLock.ahk` file from the latest release.

> [!IMPORTANT]
> This script requires **AutoHotkey v2.0+** to be installed. You can download it from the [official AutoHotkey website](https://www.autohotkey.com/).

### 2. Run the Script

Double-click the downloaded `.ahk` file to run it. An 'H' icon will appear in your system tray. The script will now work automatically when you play the game.

- **To exit the script at any time, press `F11`**.

## Customization

You can edit the `.ahk` file with any text editor to change the parameters in the `SETTINGS` section:

```ahk
;================================;
;           SETTINGS             ;
;================================;
TargetProcess    := "eldenring.exe"
CheckInterval_ms := 10   ; 10ms = 100 checks per second
LockPadding_px   := 30   ; Dead zone in pixels from each edge
```
- **`LockPadding_px`**: Adjust the size of the "dead zone" from the screen edges.
- **`F11::ExitApp()`**: Change `F11` to any other key to set a new exit hotkey.

For more advanced automation, such as running the script on Windows startup, please refer to the [**Steam Guide**](URL_К_ВАШЕМУ_СТИМ_РУКОВОДСТВУ)

## About & Support

I'm a game designer who makes scripts, mods, and other tools in my spare time.

If you find this script useful, you can support me and the work I do.

- **⭐ Star the Repository:** Helps other players discover this repo.
- **☕ [Support on Boosty:](https://boosty.to/silenceremember)** Unfortunately, this is mainly for the CIS region. Your support helps me spend more time building cool stuff.
- **💬 [Join the Discord:](https://discord.gg/EGBnfMMubw)** Our community is bilingual (RU/EN). We play games, discuss projects, and build things together.
