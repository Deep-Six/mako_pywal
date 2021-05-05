#!/bin/env bash

MAKOCTL="/usr/bin/makoctl"
MAKOCONFIG="$HOME/.config/mako/config"
#MAKOCONFIG="/tmp/config"
COLORS="$HOME/.cache/wal/colors"

COLOR0=`head -1 $COLORS`
COLOR1=`head -2 $COLORS | tail -1`
COLOR2=`head -3 $COLORS | tail -1`
COLOR3=`head -4 $COLORS | tail -1`
COLOR4=`head -5 $COLORS | tail -1`
COLOR5=`head -6 $COLORS | tail -1`
COLOR6=`head -7 $COLORS | tail -1`

cat << EOF > $MAKOCONFIG
font=Sauce Code Pro 10
layer=overlay
anchor=bottom-right
width=320
padding=8
margin=8
border-size=2
default-timeout=5000
border-radius=40

background-color=$COLOR0
text-color=$COLOR1

[urgency=low]
border-color=$COLOR2
background-color=$COLOR4
text-color=$COLOR6

[urgency=normal]
border-color=$COLOR1
background-color=$COLOR3
text-color=$COLOR5
default-timeout=10000
ignore-timeout=1

[urgency=high]
font=Sauce Code Pro 16
border-color=$COLOR1
background-color=$COLOR2
text-color=$COLOR6
default-timeout=0
ignore-timeout=1
EOF
$MAKOCTL  reload
