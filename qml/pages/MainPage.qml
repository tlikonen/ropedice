/*

  Author: Teemu Likonen <tlikonen@iki.fi>

  Modified: Asser Lähdemaki <asser@lahdemaki.fi>

  This file is placed in the public domain.

*/

import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: root

    property string lastThrow: ""
    property bool diceIsThrown: false
    property int lastDiceMax: 0

    function roll_dices (max) {

        root.lastDiceMax = max

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
        root.lastThrow = nod.sliderValue + "d" + max + ": " + sum
        dice_rolls.text = all_rolls

        if(root.diceIsThrown === false)
        {
            root.diceIsThrown = true
        }

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
                horizontalAlignment: Text.AlignHCenter
                width: parent.width
            }

            Label {
                id: dice_rolls
                text: " "
                font.pixelSize: Theme.fontSizeExtraSmall
                horizontalAlignment: Text.AlignHCenter
                width: parent.width
                height: 20
                wrapMode: Text.Wrap
                maximumLineCount: 2
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
                spacing: Theme.paddingLarge
                rowSpacing: Theme.paddingLarge

                Repeater {

                    model: [4, 6, 8, 10, 12, 20]

                    Dicebutton {
                        text: "D" + modelData
                        onClicked: roll_dices(modelData)
                        width: base.button_width
                    }
                }

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
