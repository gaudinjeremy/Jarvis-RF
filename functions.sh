#!/bin/bash

#MODULE RF pour RadioFrequence

js_rf_on(){

    sudo plugins_installed/Jarvis-RF/chacon 0 00000001 1 on
}

js_rf_off(){

    sudo plugins_installed/Jarvis-RF/chacon 0 00000001 1 off
}

# $1 : clef de la prise
# $2 : on / off
jv_rf_switch() {

    prise=$(jv_ia getValue RF $1)
    sudo $rf_path 0 prise $2
}
