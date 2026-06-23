# Windows Terminal Kimi Quad

A tiny PowerShell function that opens Windows Terminal with a 2x2 grid of [Kimi CLI](https://github.com/MoonshotAI/kimi-cli) sessions.

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

1. Copy the `t` function from `t-kimi-layout.ps1` into your PowerShell profile (`$PROFILE`).
2. Reload your profile:
   ```powershell
   . $PROFILE
   ```
3. Type `t` and press Enter.

## Requirements

- Windows Terminal
- Kimi CLI installed and available on your PATH
- PowerShell

## How it works

The function invokes `wt.exe` with a sequence of `new-tab`, `split-pane`, and `move-focus` actions to build the grid, launching Kimi with `--thinking` or `--no-thinking` in each pane.
