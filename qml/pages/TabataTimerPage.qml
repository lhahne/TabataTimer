import QtQuick 2.0
import QtMultimedia 5.0
import Sailfish.Silica 1.0

import "Timer.js" as Timer

Column {

    property int time: 0
    property int round: 0

    property bool enabled: false

    onEnabledChanged: Timer.toggleEnabled()

    Label {
        id: lowIndicator
        x: Theme.paddingLarge
        text: "ready"
        color: Theme.highlightColor
        font.pixelSize: Theme.fontSizeLarge
        anchors.horizontalCenter: parent.horizontalCenter
    }

    Label {
        x: Theme.paddingLarge
        text: time
        color: Theme.highlightColor
        font.pixelSize: Screen.width / 3
        anchors.horizontalCenter: parent.horizontalCenter
    }

    Label {
        x: Theme.paddingLarge
        text: "round " + (round + 1) + " of " + Timer.maxRounds
        color: Theme.highlightColor
        font.pixelSize: Theme.fontSizeSmall
        anchors.horizontalCenter: parent.horizontalCenter
    }

    Button {
        id: startButton
        text: "Start"
        onClicked: parent.enabled = !parent.enabled
        anchors.horizontalCenter: parent.horizontalCenter
    }

    Timer {
        interval: 1000
        running: enabled
        repeat: true
        onTriggered: Timer.tick()
    }

    SoundEffect {
        id: sound
        source: "beep.wav"
    }

}
