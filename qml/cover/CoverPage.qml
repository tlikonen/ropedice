/*

  Author: Teemu Likonen <tlikonen@iki.fi>

  This file is placed in the public domain.

*/

import QtQuick 2.0
import Sailfish.Silica 1.0

CoverBackground {

    Grid {
        columns: 1
        rows: 2
        rowSpacing: 14
        anchors.centerIn: parent
        width: parent.width

        Label {
            id: nimikyltti
            text: "Rope dices"
            horizontalAlignment: Grid.AlignHCenter
            width: parent.width
        }

        Label {
            font.pixelSize: Theme.fontSizeHuge
            text: perus.kansiteksti
            horizontalAlignment: Grid.AlignHCenter
            width: parent.width
        }

    }
}
