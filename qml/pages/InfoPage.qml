/*

  Author: Teemu Likonen <tlikonen@iki.fi>

  This file is placed in the public domain.

*/

import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page

    Column {
        id: column
        spacing: Theme.paddingLarge
        anchors.margins: Theme.paddingLarge
        anchors.fill: parent

        PageHeader {
            title: "Info"
        }

        Label {
            anchors.margins: Theme.paddingLarge
            font.pixelSize: Theme.fontSizeExtraSmall
            text: program_name + "

Author: Teemu Likonen <tlikonen@iki.fi>
Skrolli edition:\nAsser Lähdemäki <asser@lahdemaki.fi>
License: Public domain

Icon author: Steaphan Greene
Icon license: Creative Commons BY-SA 3.0"
        }
    }
}
