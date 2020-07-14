#!/bin/bash
# pandoc -o exi.docx exi.md
pandoc -o exi.pdf exi.md
cp exi.pdf ../
pandoc -o exii.pdf exii.md
cp exii.pdf ../
pandoc -o exiii.pdf exiii.md
cp exiii.pdf ../
