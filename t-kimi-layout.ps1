function t {
    <#
    .SYNOPSIS
        Open a 2x2 Kimi CLI grid in Windows Terminal.

    .DESCRIPTION
        Typing 't' in PowerShell opens a new Windows Terminal tab split into
        four panes:
        - Top row: two Kimi sessions with thinking enabled.
        - Bottom row: two Kimi sessions with thinking disabled.

    .NOTES
        Requires Windows Terminal and Kimi CLI to be installed.
        Add this function to your PowerShell profile ($PROFILE) to make it
        available in every session.
    #>

    # Resolve the kimi executable; update this line if kimi is not on your PATH.
    $kimi = (Get-Command kimi -ErrorAction SilentlyContinue).Source
    if (-not $kimi) {
        $kimi = 'kimi'
    }

    $dir = $PWD.Path

    $wtArgs = @(
        'new-tab', '-d', $dir, 'cmd', '/k', $kimi, '--thinking'
        ';', 'split-pane', '-V', 'cmd', '/k', $kimi, '--thinking'
        ';', 'split-pane', '-H', 'cmd', '/k', $kimi, '--no-thinking'
        ';', 'move-focus', 'left'
        ';', 'split-pane', '-H', 'cmd', '/k', $kimi, '--no-thinking'
    )

    Start-Process wt -ArgumentList $wtArgs -NoNewWindow
}
