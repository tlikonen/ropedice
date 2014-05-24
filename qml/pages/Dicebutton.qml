/*

  Author: Teemu Likonen <tlikonen@iki.fi>

  This file is placed in the public domain.

*/

import QtQuick 2.0
import Sailfish.Silica 1.0

Button {
    property int max
    text: "D" + max
    onClicked: roll_dice(max)
    width: base.button_width
}
