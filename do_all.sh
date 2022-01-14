#!/bin/bash
cd "$(dirname "$0")"

./initialize.sh &&
./parse_word_list.sh && 
./build_slovak_keyboard.sh && 
./install_slovak_keyboard_apk.sh
