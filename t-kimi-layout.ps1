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

    $kimi = (Get-Command kimi -ErrorAction SilentlyContinue).Source
    if (-not $kimi) { $kimi = 'kimi' }

    # Build the top row first, then split each top pane downward for a clean 2x2 grid.
    $wtArgs = @(
        'new-tab', '-d', $PWD.Path, 'cmd', '/k', $kimi, '--thinking'
        ';', 'split-pane', '-V', '--size', '0.5', 'cmd', '/k', $kimi, '--thinking'
        ';', 'move-focus', 'left'
        ';', 'split-pane', '-H', '--size', '0.5', 'cmd', '/k', $kimi, '--no-thinking'
        ';', 'move-focus', 'up'
        ';', 'move-focus', 'right'
        ';', 'split-pane', '-H', '--size', '0.5', 'cmd', '/k', $kimi, '--no-thinking'
    )

    Start-Process wt -ArgumentList $wtArgs -NoNewWindow
}
