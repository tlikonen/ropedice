/*

  Modified: Asser Lähdemaki <asser@lahdemaki.fi>

  */


import QtQuick 2.0
import Sailfish.Silica 1.0

CoverBackground {

    id: root

    property string lastThrow: ""
    property bool coverThrowEnabled: false

    signal requestThrow()

    Column {
        anchors.centerIn: parent
        Label {
            anchors.horizontalCenter: parent.horizontalCenter
            text: qsTr("Last throw:")
        }
        Label {
            anchors.horizontalCenter: parent.horizontalCenter
            text: root.lastThrow
        }
    }

    CoverActionList {

        enabled: root.coverThrowEnabled

        CoverAction {

            iconSource: "/usr/share/icons/hicolor/86x86/apps/harbour-ropedices.png"
            onTriggered: root.requestThrow()
        }
    }

}
