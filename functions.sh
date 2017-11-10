#!/bin/bash

#MODULE RF pour RadioFrequence

js_rf_on(){

    sudo plugins_installed/Jarvis-RF/chacon 0 00000001 1 on
}

js_rf_off(){

    sudo plugins_installed/Jarvis-RF/chacon 0 00000001 1 off
}
