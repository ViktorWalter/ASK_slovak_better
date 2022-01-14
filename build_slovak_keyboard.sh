#!/bin/bash
cd "$(dirname "$0")"

cp ./local.properties ./AnySoftKeyboard
cd ./AnySoftKeyboard
./gradlew generateLanguagePackIcons &&
./gradlew :addons:languages:slovak:apk:assembleDebug
