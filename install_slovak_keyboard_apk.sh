#!/bin/bash
cd "$(dirname "$0")"
cd ./AnySoftKeyboard/outputs/apks/debug
adb install ./addons-languages-slovak-apk-1.apk
