/*

  Author: Teemu Likonen <tlikonen@iki.fi>

  This file is placed in the public domain.

*/

import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page

    function satunnainen (katto) {
        var summa = 0
        var heitot = " "
        for (var i = 1; i <= liuku.sliderValue; i = i + 1) {
            var heitto = Math.floor((Math.random() * katto) + 1)
            summa = summa + heitto
            if (liuku.sliderValue > 1) {
                if (i == 1) {
                    heitot = heitto.toString()
                } else {
                    heitot = heitot + " + " + heitto
                }
            }
        }
        vastaus.text = summa
        perus.kansiteksti = summa
        nopat.text = heitot
        return 0
    }

    SilicaFlickable {
        anchors.fill: parent

        PullDownMenu {
            MenuItem {
                text: "Info"
                onClicked: pageStack.push(Qt.resolvedUrl("SecondPage.qml"))
            }
        }

        contentHeight: column.height

        Column {
            id: column
            spacing: Theme.paddingLarge
            anchors.margins: Theme.paddingLarge
            anchors.fill: parent

            PageHeader {
                title: "Rope dices"
            }

            Label {
                id: vastaus
                text: " "
                font.pixelSize: Theme.fontSizeHuge
                anchors.horizontalCenter: parent.horizontalCenter
            }

            Label {
                id: nopat
                text: " "
                font.pixelSize: Theme.fontSizeExtraSmall
                anchors.horizontalCenter: parent.horizontalCenter
            }

            Slider {
                id: liuku
                label: "Number of dices"
                minimumValue: 1
                maximumValue: 10
                stepSize: 1
                value: 1
                valueText: value
                width: parent.width
            }

            Grid {
                id: ruudukko
                columns: 2
                rows: 4
                spacing: 15
                rowSpacing: 30

                Dicebutton { numero: 4 }
                Dicebutton { numero: 6 }
                Dicebutton { numero: 8 }
                Dicebutton { numero: 10 }
                Dicebutton { numero: 12 }
                Dicebutton { numero: 20 }

                TextField {
                    id: customText
                    text: "100"
                    validator: IntValidator {}
                    inputMethodHints: Qt.ImhDigitsOnly
                    width: perus.nappiLeveys
                }

                Button {
                    text: "Dx"
                    onClicked: satunnainen(customText.text)
                    width: perus.nappiLeveys
                }

            }
        }
    }
}
