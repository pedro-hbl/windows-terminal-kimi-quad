@echo off
wt.exe new-tab -d . cmd /k kimi --thinking ; split-pane -V --size 0.5 cmd /k kimi --thinking ; move-focus left ; split-pane -H --size 0.5 cmd /k kimi --no-thinking ; move-focus up ; move-focus right ; split-pane -H --size 0.5 cmd /k kimi --no-thinking
