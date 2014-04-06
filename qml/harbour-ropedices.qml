/*

  Author: Teemu Likonen <tlikonen@iki.fi>

  This file is placed in the public domain.

*/

import QtQuick 2.0
import Sailfish.Silica 1.0
import "pages"
import "cover"

ApplicationWindow
{
    id: base

    property string program_name: "Rope dices"

    property int button_width: width * (3 / 7)

    MainPage {

        id: mainPage
    }

    initialPage: mainPage

    cover: Component {
        CoverPage {

            lastThrow: mainPage.lastThrow

            coverThrowEnabled: mainPage.diceIsThrown

            onRequestThrow: {
                mainPage.roll_dices(mainPage.lastDiceMax);
            }

        }
    }

}
