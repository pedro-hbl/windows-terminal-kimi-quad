function t {
    <#
    .SYNOPSIS
        Open a 2x2 Kimi CLI grid in Windows Terminal.

    .DESCRIPTION
        Typing 't' in PowerShell opens a new Windows Terminal tab split into
        four equal panes:
        - Top row: two Kimi sessions with thinking enabled.
        - Bottom row: two Kimi sessions with thinking disabled.

    .NOTES
        Requires Windows Terminal and Kimi CLI to be installed.
        Add this function to your PowerShell profile ($PROFILE) to make it
        available in every session.
    #>

    # The layout is defined as a custom Windows Terminal action (User.KimiQuad).
    Start-Process wt -ArgumentList 'action:User.KimiQuad' -NoNewWindow
}
