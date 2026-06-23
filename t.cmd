@echo off
wt.exe new-tab -d . cmd /k kimi --thinking ; split-pane -V cmd /k kimi --thinking ; split-pane -H cmd /k kimi --no-thinking ; move-focus left ; split-pane -H cmd /k kimi --no-thinking
