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

### PowerShell

1. Copy the `t` function from `t-kimi-layout.ps1` into your PowerShell profile (`$PROFILE`).
2. Reload your profile:
   ```powershell
   . $PROFILE
   ```
3. Type `t` and press Enter.

### Command Prompt (cmd.exe)

1. Copy `t.cmd` to a directory on your PATH (e.g. `C:\Users\%USERNAME%\.local\bin`).
2. Type `t` and press Enter.

## Requirements

- Windows Terminal
- Kimi CLI installed and available on your PATH
- PowerShell or Command Prompt
