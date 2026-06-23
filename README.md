# Windows Terminal Kimi Quad

A tiny setup that opens Windows Terminal with a 2x2 grid of [Kimi CLI](https://github.com/MoonshotAI/kimi-cli) sessions whenever you type `t` and press Enter.

## Layout

```
+------------------+------------------+
| kimi --thinking  | kimi --thinking  |
|     (top)        |     (top)        |
+------------------+------------------+
| kimi --no-think  | kimi --no-think  |
|    (bottom)      |    (bottom)      |
+------------------+------------------+
```

## Installation

### 1. Add the custom action to Windows Terminal

Open Windows Terminal settings (`Ctrl+,`) and add the content of `settings-snippet.json` to the `actions` array in your `settings.json`.

The file is usually located at:
```
%LOCALAPPDATA%\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json
```

### 2. Add the `t` command

#### PowerShell

Copy the `t` function from `t-kimi-layout.ps1` into your PowerShell profile (`$PROFILE`), then reload:
```powershell
. $PROFILE
```

#### Command Prompt (cmd.exe)

Copy `t.cmd` to a directory on your PATH (e.g. `C:\Users\%USERNAME%\.local\bin`).

## Usage

Type `t` and press Enter in any Windows Terminal pane.

## Requirements

- Windows Terminal
- Kimi CLI installed and available on your PATH
- PowerShell or Command Prompt
