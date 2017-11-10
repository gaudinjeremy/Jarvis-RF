#!/bin/bash

#MODULE RF pour RadioFrequence

js_rf_switch(){

    if [ $3 = "on" ]
    then
        old="off"
    else
        old="on"
    fi

    deviceId=$(js_ia_getStrictText $1 $2)
    sudo plugins/jarvis-rf/chacon 0 $deviceId 1 $3
    js_ia_upCell $old $3 $1
}

js_rf_switchGroup() {

    group=$1

    row=$(js_ia_loopCell $group)
    if [ $row != 'false' ]
    then
        nb=$(js_ia_countCells $row)
        for ((i=1; i<=$nb; i++))
        do
            name=$(js_ia_getCell $row $i)
            js_rf_switch $name 3 $2
        done
        js_ia_say "confirmation"
    else
        js_ia_say "erreur"
        say "je n'ai pas trouvé le groupe"
    fi
}
