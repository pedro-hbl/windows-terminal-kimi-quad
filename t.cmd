@echo off
wt.exe new-tab -d . cmd /k kimi --thinking ; split-pane -H --size 0.5 cmd /k kimi --no-thinking ; move-focus up ; split-pane -V --size 0.5 cmd /k kimi --thinking ; move-focus down ; split-pane -V --size 0.5 cmd /k kimi --no-thinking
