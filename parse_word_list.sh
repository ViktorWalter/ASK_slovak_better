#!/bin/bash
cd "$(dirname "$0")"
FILENAME=./sk_wordlist.combined
# FILENAME=./small_sample.txt
cp ./slovak-wordlist/sk.txt $FILENAME

command nvim -u "NONE" --headless -c ":%norm! Iword=f s,f=lywA,flags=,originalFreq=p" -c ":x" $FILENAME
 # example line of the desired format: word=byť,f=12576259,flags=,originalFreq=12576259

gzip $FILENAME
cp $FILENAME.gz ./AnySoftKeyboard/addons/languages/slovak/pack/dictionary/
