#!/bin/sh

pandoc -f gfm -t html day1.md -s -o ./pages/day1.html --metadata pagetitle="day1"
pandoc -f gfm -t html day3.md -s -o ./pages/day3.html --metadata pagetitle="day3"
pandoc -f gfm -t html day4.md -s -o ./pages/day4.html --metadata pagetitle="day4"
