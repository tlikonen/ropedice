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
    initialPage: Component { FirstPage { } }
    cover: Component { CoverPage {} }

    Item {
        id: perus
        property int nappiLeveys: parent.width * (3 / 7)
        property string kansiteksti: " "
    }
}
