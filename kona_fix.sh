#!/bin/bash

# Fix for the game Kona on Steam

sed -i 's|"Fullscreen" type="int">1|"Fullscreen" type="int">0|' $HOME/.config/unity3d/Parabole/Kona/prefs

sed -i 's|"Screenmanager Is Fullscreen mode" type="int">1|"Screenmanager Is Fullscreen mode" type="int">0|' $HOME/.config/unity3d/Parabole/Kona/prefs