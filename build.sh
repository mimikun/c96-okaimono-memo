#!/bin/sh

pandoc -f markdown -t html day1.md -s -o day1.html --metadata pagetitle="day1"
pandoc -f markdown -t html day3.md -s -o day3.html --metadata pagetitle="day3"
pandoc -f markdown -t html day4.md -s -o day4.html --metadata pagetitle="day4"
