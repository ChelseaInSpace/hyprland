#!/bin/bash
mv ~/.config/waybar/swap/configswap ~/.config/waybar
mv ~/.config/waybar/config ~/.config/waybar/swap/configswap
mv ~/.config/waybar/configswap ~/.config/waybar/config
pkill waybar && hyprctl dispatch exec waybar
