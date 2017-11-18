#!/bin/bash

#MODULE RF pour RadioFrequence

# 00000001 <= Numero de prise
# $1 : clef de la prise
# $2 : on / off
# verifier si la prise existe bien dans l IA pour lancer la commande
jv_rf_switch() {

    prise=$(jv_ia_print getValue rf $1)

    if [ "$prise" = "plugin introuvable" ]
    then
        jv_ia_say getValue ia erreur
        say "$prise"
    elif [ "$prise" = "clef introuvable" ]
    then
        jv_ia_say getValue ia erreur
        say "$prise"
    else
        sudo $rf_path 0 $prise 1 $2
        jv_ia_say getValue ia confirmation
        if [ $2 = "on" ]
        then
            say "$1 est allumé"
        else
            say "$1 est éteins"
        fi
    fi
}
