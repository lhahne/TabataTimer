import QtQuick 2.0
import Sailfish.Silica 1.0

import "Timer.js" as Timer

Page {
    id: page

    // To enable PullDownMenu, place our content in a SilicaFlickable
    SilicaFlickable {
        anchors.fill: parent

        // Tell SilicaFlickable the height of its content.
        contentHeight: childrenRect.height

        // Place our content in a Column.  The PageHeader is always placed at the top
        // of the page, followed by our content.
        Column {
            width: page.width
            spacing: Theme.paddingLarge

            PageHeader {
                title: "Tabata Timer"
            }

            TabataTimerPage {
                width: parent.width
            }

        }
    }
}



