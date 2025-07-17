#!/bin/bash

sleep 2s

killall conky
		
conky -c $HOME/.config/conky/Conky.lua &> /dev/null &

