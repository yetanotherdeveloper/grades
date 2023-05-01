#!/bin/bash

# Four arguments: ang, info, mat , pol grades

# bash script to produce history of grades and money 
#
# pol, mat, ang, inf
#3.44 + 3.11 + 5.5 +5.14 = 17.19/4 = 4.2975

title=$(date "+%m-%Y")

gnuplot -e " set terminal pngcairo dashed;
set output \"grades-$title.png\";
set title \"Stypendium za $title\";
set xrange[1:6];
thrs=4.0;
x=(($1+$2+$3+$4)/4.0);
kasa=120.0*( (x - thrs) > 0 ? (x- thrs): 0);
set arrow from 1,120*(5-thrs) to 6,120*(5-thrs) nohead dashtype 3;
set arrow from 1,120*(4.0-thrs) to 6,120*(4.0-thrs) nohead dashtype 3;
set arrow from 1,kasa to 6,kasa nohead dashtype 3;
set label sprintf(\"Aktualne stypendium: %.2fzl\",kasa) at 2,kasa+5;
set xlabel \"Srednia ocen\";
set ylabel \"wysokosc stypendium\";
plot 120.0*( (x - thrs) > 0 ? (x- thrs): 0) title \"Stypendium\" lw 4;"
