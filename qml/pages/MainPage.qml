/*

  Author: Teemu Likonen <tlikonen@iki.fi>

  This file is placed in the public domain.

*/

import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page

    function roll_dices (max) {
        var sum = 0
        var all_rolls = " "
        for (var i = 1; i <= nod.sliderValue; i = i + 1) {
            var roll = Math.floor((Math.random() * max) + 1)
            sum = sum + roll
            if (nod.sliderValue > 1) {
                if (i == 1) {
                    all_rolls = roll.toString()
                } else {
                    all_rolls = all_rolls + " + " + roll
                }
            }
        }
        result.text = sum
        base.cover_text = sum
        dice_rolls.text = all_rolls
        return 0
    }

    SilicaFlickable {
        anchors.fill: parent

        PullDownMenu {
            MenuItem {
                text: "Info"
                onClicked: pageStack.push(Qt.resolvedUrl("InfoPage.qml"))
            }
        }

        contentHeight: column.height

        Column {
            id: column
            spacing: Theme.paddingLarge
            anchors.margins: Theme.paddingLarge
            anchors.horizontalCenter: parent.horizontalCenter

            PageHeader {
                title: base.program_name
            }

            Label {
                id: result
                text: " "
                font.pixelSize: Theme.fontSizeHuge
                anchors.horizontalCenter: parent.horizontalCenter
            }

            Label {
                id: dice_rolls
                text: " "
                font.pixelSize: Theme.fontSizeExtraSmall
                anchors.horizontalCenter: parent.horizontalCenter
            }

            Slider {
                id: nod
                label: "Number of dices"
                minimumValue: 1
                maximumValue: 10
                stepSize: 1
                value: 1
                valueText: value
                width: parent.width
            }

            Grid {
                columns: 2
                rows: 4
                spacing: 15
                rowSpacing: 30

                Dicebutton { max: 4 }
                Dicebutton { max: 6 }
                Dicebutton { max: 8 }
                Dicebutton { max: 10 }
                Dicebutton { max: 12 }
                Dicebutton { max: 20 }

                TextField {
                    id: custom_dice
                    text: "100"
                    validator: IntValidator { bottom: 2; top: 10000 }
                    inputMethodHints: Qt.ImhDigitsOnly
                    width: base.button_width
                }

                Button {
                    text: "Dx"
                    onClicked: roll_dices(custom_dice.text)
                    width: base.button_width
                }
            }
        }
    }
}
