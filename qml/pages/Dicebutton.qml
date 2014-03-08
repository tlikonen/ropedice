/*

  Author: Teemu Likonen <tlikonen@iki.fi>

  This file is placed in the public domain.

*/

import QtQuick 2.0
import Sailfish.Silica 1.0

Button {
    id: nappi
    property int numero
    text: "D" + numero
    onClicked: satunnainen(numero)
    width: perus.nappiLeveys
}
